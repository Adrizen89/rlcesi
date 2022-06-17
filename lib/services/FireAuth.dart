import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rlcesi/main.dart';


Future signIn(email, password, context) async {
      showDialog(
        context: context, 
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

Future signUp(email, password, name, context) async {
  showDialog(
        context: context, 
        builder: (context) => Center(child: CircularProgressIndicator(),));
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
  }on FirebaseAuthException catch(e) {
    print(e);
  }
  navigatorKey.currentState!.popUntil((route)=>route.isFirst);
}

Future signOut() async {
  await FirebaseAuth.instance.signOut();
}