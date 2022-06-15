import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
}