import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rlcesi/commons/constants.dart';
import 'package:rlcesi/pages/Authentication/mLogin.dart';
import 'package:rlcesi/pages/Authentication/mRegister.dart';
import 'package:rlcesi/pages/wrapper/mNavBar.dart';
import 'package:rlcesi/services/FireAuth.dart';
import 'package:rlcesi/services/validator.dart';

class MAuthScreen extends StatefulWidget {
  MAuthScreen({Key? key}) : super(key: key);

  @override
  State<MAuthScreen> createState() => _MAuthScreenState();
}

class _MAuthScreenState extends State<MAuthScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
  ? MLoginScreen(onClickSignUp: toggle)
  : MRegisterScreen(onClickSignIn : toggle);

  void toggle() => setState(() {
    isLogin = !isLogin;
  });
}
