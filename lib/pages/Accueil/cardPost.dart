import 'package:flutter/material.dart';
import 'package:rlcesi/commons/constants.dart';

postCard(context) {
var w = MediaQuery.of(context).size.width;
  return Container(
    width: w*1,
    height: w*0.5,
  decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 238, 234, 234),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child:
  Card(
    color: Colors.transparent,
    elevation: 0,
    child: Column(
      children: [
        ListTile(
          leading: CircleAvatar(),
          title: Text('Adrien'),
        ),

        ListBody(),

        Row()
      ],
    ),
  )
  );
}