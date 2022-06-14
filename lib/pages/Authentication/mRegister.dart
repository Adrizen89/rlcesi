import 'package:flutter/material.dart';
import 'package:rlcesi/commons/constants.dart';

class MRegisterScreen extends StatefulWidget {
  MRegisterScreen({Key? key}) : super(key: key);

  @override
  State<MRegisterScreen> createState() => _MRegisterScreenState();
}

class _MRegisterScreenState extends State<MRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }),
          icon:Icon(Icons.arrow_back, color: primaryColor,)
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bienvenue', style: TextStyle(fontSize: w*0.07),),
          SizedBox(height: w*0.1,),
          Center(
              child: Container(
                width: w*0.5,
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration : textInputDecoration.copyWith(labelText: 'Nom')
                ),
                SizedBox(height: w*0.03,),

                TextFormField(
                  decoration : textInputDecoration.copyWith(labelText: 'Prénom')
                ),
                SizedBox(height: w*0.03,),

                TextFormField(
                  decoration : textInputDecoration.copyWith(labelText: 'Adresse email')
                ), 
                SizedBox(height: w*0.03,),
                TextFormField(
                  decoration : textInputDecoration.copyWith(labelText: 'Mot de passe')
                ),
                SizedBox(height: w*0.02,),
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
                  child: Text('S\'inscrire')),
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
                  child: Text('Vous avez déjà un compte ? Connectez vous !'),
                )
                ],
            )),
          ))
        ],
      ),
    );
  }
}