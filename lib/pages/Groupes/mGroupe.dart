import 'package:flutter/material.dart';
class MGroupeScreen extends StatefulWidget {
  MGroupeScreen({Key? key}) : super(key: key);

  @override
  State<MGroupeScreen> createState() => _MGroupeScreenState();
}

class _MGroupeScreenState extends State<MGroupeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Groupe')),
    );
  }
}