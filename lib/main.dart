import 'package:flutter/material.dart';
import 'package:rlcesi/pages/Authentication/authenticationScreen.dart';
import 'package:rlcesi/pages/wrapper/wrapperScreen.dart';
import 'package:rlcesi/pages/registrationScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: registrationScreen(),
    );
  }
}
