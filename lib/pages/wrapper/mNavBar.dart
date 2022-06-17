import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rlcesi/commons/constants.dart';
import 'package:rlcesi/pages/Accueil/mAccueil.dart';
import 'package:rlcesi/pages/Groupes/mGroupe.dart';
import 'package:rlcesi/pages/mAddPost/mAddPost.dart';
import 'package:rlcesi/pages/mProfil/mProfil.dart';
import 'package:rlcesi/pages/mSearch/mSearch.dart';

class MNavBar extends StatefulWidget {
  MNavBar({Key? key}) : super(key: key);

  @override
  State<MNavBar> createState() => _MNavBarState();
}

class _MNavBarState extends State<MNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    final user = FirebaseAuth.instance.currentUser!;

    List<Widget> _widgetOptions = <Widget>[
      MAccueilScreen(),
      MGroupeScreen(),
      MAddPostScreen(),
      MSearchScreen(),
      MProfilScreen()
    ];

    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          unselectedItemColor: Color.fromARGB(255, 84, 83, 83),
          selectedItemColor: primaryColor,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: 'Groupes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_rounded),
              label: 'Publier',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Rechercher',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
        ));
  }
}
