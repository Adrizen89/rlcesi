import 'package:flutter/material.dart';
import 'package:rlcesi/pages/Accueil/cardPost.dart';

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
      body: postCard(context),
    );
  }
}