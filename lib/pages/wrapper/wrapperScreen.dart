import 'package:flutter/material.dart';
import 'package:rlcesi/pages/Authentication/mAuth.dart';
import 'package:rlcesi/pages/Authentication/wAuth.dart';

class Wrapper extends StatefulWidget {
  Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
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
