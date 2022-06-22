import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rlcesi/commons/constants.dart';
import 'package:rlcesi/services/FireAuth.dart';
import 'package:rlcesi/services/validator.dart';

enum Role { lecteur, redacteur }
class MRegisterScreen extends StatefulWidget {
  final Function() onClickSignIn;
  MRegisterScreen({Key? key, required this.onClickSignIn}) : super(key: key);

  @override
  State<MRegisterScreen> createState() => _MRegisterScreenState();
}

class _MRegisterScreenState extends State<MRegisterScreen> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Role _site = Role.lecteur;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bienvenue', style: TextStyle(fontSize: w*0.07),),
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
                    signUp(
                      emailController.text.trim(),
                      passwordController.text.trim(),
                      context,
                      formKey
                    );
                  }, 
                  child: Text('S\'inscrire', style: TextStyle(fontSize: w*0.05),)),
                ),
                  SizedBox(height: w*0.05,),
                RichText(text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  text: 'Déjà un compte ?',
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                      ..onTap = widget.onClickSignIn,
                      text: 'Connectez-vous !',
                      style: TextStyle(color: primaryColor)
                    )
                  ]
                ))
                ],
            )),
          ))
        ],
      ),)
    );
  }
}