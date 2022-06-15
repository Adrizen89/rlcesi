import 'package:flutter/material.dart';

class MAddPostScreen extends StatefulWidget {
  MAddPostScreen({Key? key}) : super(key: key);

  @override
  State<MAddPostScreen> createState() => _MAddPostScreenState();
}

class _MAddPostScreenState extends State<MAddPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Add a post'),),
    );
  }
}