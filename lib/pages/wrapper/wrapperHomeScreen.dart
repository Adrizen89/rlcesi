import 'package:flutter/material.dart';
import 'package:rlcesi/pages/Accueil/mAccueil.dart';
import 'package:rlcesi/pages/wrapper/mNavBar.dart';

class WrapperHomeScreen extends StatefulWidget {
  WrapperHomeScreen({Key? key}) : super(key: key);

  @override
  State<WrapperHomeScreen> createState() => _WrapperHomeScreenState();
}

class _WrapperHomeScreenState extends State<WrapperHomeScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return Container();
      } else {
        return MAccueilScreen();
      }
    }));
  }
}