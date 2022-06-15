import 'package:flutter/material.dart';

class MProfilScreen extends StatefulWidget {
  MProfilScreen({Key? key}) : super(key: key);

  @override
  State<MProfilScreen> createState() => _MProfilScreenState();
}

class _MProfilScreenState extends State<MProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Profil'),),
    );
  }
}