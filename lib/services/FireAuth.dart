import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rlcesi/main.dart';
import 'package:rlcesi/models/user.dart';
import 'package:rlcesi/services/Database.dart';
import 'package:rlcesi/services/Notification.dart';
import 'package:rlcesi/services/Utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AppUser? _userFromFirebaseUser(User? user) {
    initUser(user);
    return user != null ? AppUser(user.uid) : null;
  }

  void initUser(User? user) async {
    if (user == null) return;
    NotificationService.getToken().then((value) {
      DatabaseService(user.uid).saveToken(value);
    });
  }

  Stream<AppUser?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future signInWithEmailAndPassword(String email, String password, context) async {
    showDialog(
        context: context, 
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator(),));
    try {
      UserCredential result =
          await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    }on FirebaseAuthException catch (e) {
      print(e);
    }
    navigatorKey.currentState!.popUntil((route)=>route.isFirst);
  }

  Future registerWithEmailAndPassword(String name, String email, String password, context, formKey) async {
    final isValid = formKey.currentState!.validate();
  if (!isValid) return;
    try {
      UserCredential result =
          await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      if (user == null) {
        throw Exception("No user found");
      } else {
        await DatabaseService(user.uid).saveUser(name, email);

        return _userFromFirebaseUser(user);
      }
    }on FirebaseAuthException catch (e) {
      print(e);
    } 
    navigatorKey.currentState!.popUntil((route)=>route.isFirst);
  }
  
Future signOut() async {
  await FirebaseAuth.instance.signOut();
}

Future resetPassword(email, context) async {
  showDialog(
    context: context, 
    barrierDismissible: false,
    builder: (context) => Center(child: CircularProgressIndicator(),));
  try {
    await FirebaseAuth.instance
    .sendPasswordResetEmail(email: email.trim());
  navigatorKey.currentState!.popUntil((route)=>route.isFirst);
  //Utils.showSnackBar('Réinitialisation email envoyé !');
  //Navigator.of(context).popUntil((route) => route.isFirst);
  } on FirebaseAuthException catch (e) {
    print(e);
    Navigator.of(context).pop();

  }
}

Future sendVerificationEmail() async {
  try {
    final user = FirebaseAuth.instance.currentUser!;
  await user.sendEmailVerification();
  } catch (e) {
    print (e);
    //Utils.showSnackBar(e.toString());
  }
}
}