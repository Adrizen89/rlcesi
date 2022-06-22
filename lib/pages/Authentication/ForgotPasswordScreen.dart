import 'package:flutter/material.dart';
import 'package:rlcesi/commons/constants.dart';
import 'package:rlcesi/services/FireAuth.dart';
import 'package:rlcesi/services/validator.dart';

class ForgotPasswordScreen extends StatefulWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Form(
          key: formKey,
            child: Center(
                child: Container(
                  width: w*0.8,
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
      Text(
          'Renseignez votre adresse email pour réinitialiser votre mot de passe'),
          TextFormField(
                  controller: emailController,
                  validator: FieldValidator.validateEmail,
                  decoration : textInputDecoration.copyWith(labelText: 'Adresse email')
                ), 
      SizedBox(
          width: w * 0.75,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shadowColor: primaryColor,
              textStyle: TextStyle(
                fontSize: w * 0.03,
              ),
              primary: primaryColor,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            onPressed: () {
              resetPassword(emailController, context);
            },
            child: Text(
              'Envoyer un email de récuparation',
              style: TextStyle(fontSize: w * 0.045),
            ),
          ))
    ]),
                ))));
  }
}
