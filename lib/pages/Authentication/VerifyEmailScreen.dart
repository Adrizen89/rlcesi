import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rlcesi/pages/Accueil/mAccueil.dart';
import 'package:rlcesi/pages/Authentication/mLogin.dart';
import 'package:rlcesi/pages/wrapper/wrapperAuthScreen.dart';
import 'package:rlcesi/services/FireAuth.dart';

class VerifyEmailScreen extends StatefulWidget {
  VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  bool isEmailVerified = false;
  Timer? timer;
  @override
  void initState() {
    super.initState();

    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified) {
      sendVerificationEmail();

      Timer.periodic(
        Duration(seconds: 5),
        (_) => checkEmailVerified(),
      );
    }
  }
  Future checkEmailVerified() async {
  await FirebaseAuth.instance.currentUser!.reload();
  setState(() {
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (isEmailVerified) timer?.cancel();
  });
}

  @override
  void dispose(){
    timer?.cancel();

    super.dispose();
  }

  @override

  
  Widget build(BuildContext context) => isEmailVerified
  ? MAccueilScreen()
  : Scaffold(
    body: Center(
      child: Text('Un mail vous a été envoyé pour vérifier votre adresse email !'),
    ),
  );
}