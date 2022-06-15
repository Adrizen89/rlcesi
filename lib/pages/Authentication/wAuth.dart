import 'package:flutter/material.dart';
import 'package:rlcesi/pages/Authentication/mAuth.dart';

class WAuthScreen extends StatefulWidget {
  WAuthScreen({Key? key}) : super(key: key);

  @override
  State<WAuthScreen> createState() => _WAuthScreenState();
}

class _WAuthScreenState extends State<WAuthScreen> {
  @override
  double corner = 25;

  Widget build(BuildContext context) {
    return Scaffold(body: Container(
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: MediaQuery.of(context).size.height,
                color: Colors.black,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.85,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(corner),
                            topRight: Radius.circular(corner),
                            bottomLeft: Radius.circular(corner),
                            bottomRight: Radius.circular(corner)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(1, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
