import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rlcesi/commons/constants.dart';
import 'package:rlcesi/pages/Authentication/mRegister.dart';
import 'package:rlcesi/pages/wrapper/mNavBar.dart';
import 'package:rlcesi/services/FireAuth.dart';
import 'package:rlcesi/services/validator.dart';

class MLoginScreen extends StatefulWidget {
  final VoidCallback onClickSignUp;
  MLoginScreen({Key? key, required this.onClickSignUp}) : super(key: key);

  @override
  State<MLoginScreen> createState() => _MLoginScreenState();
}

class _MLoginScreenState extends State<MLoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bonjour', style: TextStyle(fontSize: w*0.07),),
          SizedBox(height: w*0.1,),
          Center(
              child: Container(
                width: w*0.8,
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  validator: FieldValidator.validateEmail,
                  decoration : textInputDecoration.copyWith(labelText: 'Adresse email')
                ), 
                SizedBox(height: w*0.03,),
                TextFormField(
                  controller: passwordController,
                  validator: FieldValidator.validatePassword,
                  decoration : textInputDecoration.copyWith(labelText: 'Mot de passe')
                ),
                SizedBox(height: w*0.02,),
                Text('Mot de passe oublié ?'),
                SizedBox(height: w*0.1,),
                SizedBox(
                  width : w*0.5,
                  child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                        shadowColor: primaryColor,
                        textStyle: TextStyle(
                            fontSize: w * 0.03, ),
                        primary: primaryColor,
                        elevation: 5,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                  onPressed: () {
                    signIn(
                      emailController.text.trim(),
                      passwordController.text.trim(),
                      context
                    );
                  }, 
                  child: Text('Se connecter', style: TextStyle(fontSize: w*0.05),)),
                ),
                  SizedBox(height: w*0.05,),
                RichText(text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  text: 'Pas de compte ?',
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                      ..onTap = widget.onClickSignUp,
                      text: 'S\'inscrire',
                      style: TextStyle(color: primaryColor)
                    )
                  ]
                ))
                ],
            )),
          ))
        ],
      ),
      )
    );

  }
  
}
