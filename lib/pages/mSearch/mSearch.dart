import 'package:flutter/material.dart';

class MSearchScreen extends StatefulWidget {
  MSearchScreen({Key? key}) : super(key: key);

  @override
  State<MSearchScreen> createState() => _MSearchScreenState();
}

class _MSearchScreenState extends State<MSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Search')),
    );
  }
}