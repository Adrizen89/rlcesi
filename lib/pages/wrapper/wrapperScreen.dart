import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  double corner = 25;

  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return Container(
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
                        left: 50,
                        right: 50,
                      ),
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.5,
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
        );
      } else {
        return Container();
      }
    }));
  }
}
