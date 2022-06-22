import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rlcesi/main.dart';
import 'package:rlcesi/services/Utils.dart';


Future signIn(email, password, context) async {
      showDialog(
        context: context, 
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator(),));
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email : email,
      password : password
      );
      } on FirebaseAuthException catch (e) {
        print(e);
      }

      navigatorKey.currentState!.popUntil((route)=>route.isFirst);
    }

Future signUp(email, password, context, formKey) async {
  final isValid = formKey.currentState!.validate();
  if (!isValid) return;
  showDialog(
        context: context, 
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator(),));
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email, 
      password: password);
  }on FirebaseAuthException catch(e) {
    print(e);

    //Utils.showSnackBar(e.message);
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
  
  //Utils.showSnackBar('Réinitialisation email envoyé !');
  Navigator.of(context).popUntil((route) => route.isFirst);
  } on FirebaseAuthException catch (e) {
    print(e);
    Navigator.of(context).pop();

  }
}