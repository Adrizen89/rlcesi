import 'package:flutter/material.dart';
import 'package:rlcesi/commons/constants.dart';
import 'package:rlcesi/pages/Accueil/mAccueil.dart';

class MNavBar extends StatefulWidget {
  MNavBar({Key? key}) : super(key: key);

  @override
  State<MNavBar> createState() => _MNavBarState();
}

class _MNavBarState extends State<MNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        shape: CircularNotchedRectangle(),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight:Radius.circular(30), topLeft: Radius.circular(30))
          ),
          height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(onPressed: (() {
                     Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MAccueilScreen(),
                    ));
              
            }),
            child: Icon(Icons.home),),

            MaterialButton(onPressed: (() {
                     Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MAccueilScreen(),
                    ));
              
            }),
            child: Icon(Icons.group),),

            MaterialButton(onPressed: (() {
                     Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MAccueilScreen(),
                    ));
              
            }),
            child: Icon(Icons.add_circle_outline_rounded, color: primaryColor,),),

            MaterialButton(onPressed: (() {
                     Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MAccueilScreen(),
                    ));
              
            }),
            child: Icon(Icons.search),),

            MaterialButton(onPressed: (() {
                     Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MAccueilScreen(),
                    ));
              
            }),
            child: Icon(Icons.person),),

          ],
        ),
      ),)
    );
  }
}