import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                        labelText: 'mot de passe',
                        labelStyle: TextStyle(color: Colors.green)),
                    obscureText: true,
                  ),
              ],
            ))
        ],
      ),
    );
  }
}