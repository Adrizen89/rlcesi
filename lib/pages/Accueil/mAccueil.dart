import 'package:flutter/material.dart';

class MAccueilScreen extends StatefulWidget {
  MAccueilScreen({Key? key}) : super(key: key);

  @override
  State<MAccueilScreen> createState() => MAccueilScreenState();
}

class MAccueilScreenState extends State<MAccueilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ressources Relationnelles'),
        actions: [
          IconButton(onPressed: () {}, 
          icon: Icon(Icons.more_horiz_rounded))
        ],
      ),
    );
  }
}