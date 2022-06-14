import 'package:flutter/material.dart';
import 'package:rlcesi/commons/constants.dart';
import 'package:rlcesi/pages/Authentication/mRegister.dart';

class MAuthScreen extends StatefulWidget {
  MAuthScreen({Key? key}) : super(key: key);

  @override
  State<MAuthScreen> createState() => _MAuthScreenState();
}

class _MAuthScreenState extends State<MAuthScreen> {
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
                width: w*0.5,
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration : textInputDecoration.copyWith(labelText: 'Adresse email')
                ), 
                SizedBox(height: w*0.03,),
                TextFormField(
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
                  onPressed: () {}, 
                  child: Text('Se connecter')),
                ),
                  SizedBox(height: w*0.05,),
                GestureDetector(
                  onTap: () {
                     Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MRegisterScreen(),
                    ),
                  );
                  },
                  child: Text('Vous n\'avez pas de compte ? Créez en un !'),
                )
                ],
            )),
          ))
        ],
      ),
      )
    );
  }
}
