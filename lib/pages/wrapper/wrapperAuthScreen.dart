import 'package:flutter/material.dart';
import 'package:rlcesi/pages/Authentication/mAuth.dart';
import 'package:rlcesi/pages/Authentication/wAuth.dart';

class WrapperAuthScreen extends StatefulWidget {
  WrapperAuthScreen({Key? key}) : super(key: key);

  @override
  State<WrapperAuthScreen> createState() => _WrapperAuthScreenState();
}

class _WrapperAuthScreenState extends State<WrapperAuthScreen> {
  @override
  double corner = 25;

  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return WAuthScreen();
      } else {
        return MAuthScreen();
      }
    }));
  }
}

