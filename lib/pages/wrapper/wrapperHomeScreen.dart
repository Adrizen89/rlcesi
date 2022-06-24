import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rlcesi/models/user.dart';
import 'package:rlcesi/pages/Accueil/mAccueil.dart';
import 'package:rlcesi/pages/wrapper/mNavBar.dart';
import 'package:rlcesi/pages/wrapper/wrapperAuthScreen.dart';
import 'package:rlcesi/services/FireAuth.dart';

class WrapperHomeScreen extends StatefulWidget {

  String? userUid;
  WrapperHomeScreen({@required this.userUid});

  @override
  State<WrapperHomeScreen> createState() => _WrapperHomeScreenState();
}

class _WrapperHomeScreenState extends State<WrapperHomeScreen> {

  StreamSubscription? streamSubscription;
  Member? user;

  @override
  void initState() {
    super.initState();
    streamSubscription = FirebaseHandler().fire_user.doc(widget.userUid).snapshots().listen((event) {
      setState(() {
        user = Member(event);
      });
    });

  }

  @override

  Widget build(BuildContext context) {
    return (user == null)
    ? Center(child: CircularProgressIndicator(),)
    : Scaffold(body: 
    Text('hello, ${user?.name}'));
  }
}