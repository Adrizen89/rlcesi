import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rlcesi/pages/Accueil/cardPost.dart';
import 'package:rlcesi/services/FireAuth.dart';

class MAccueilScreen extends StatefulWidget {
  MAccueilScreen({Key? key}) : super(key: key);
  

  @override
  State<MAccueilScreen> createState() => MAccueilScreenState();
}

class MAccueilScreenState extends State<MAccueilScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ressources Relationnelles'),
        actions: [
          IconButton(onPressed: () {
            signOut();
          }, 
          icon: Icon(Icons.logout))
        ],
      ),
      body: Text(user.email!)
      //postCard(context),
    );
  }
}