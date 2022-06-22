import 'package:flutter/material.dart';

const primaryColor = Color(0xff03989e);
const secondaryColor = Color(0xffffbd59);

var textInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(horizontal: 40),
  fillColor: Color.fromARGB(255, 224, 217, 217).withOpacity(0.3),
  filled: true,
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.0),
      borderRadius: BorderRadius.circular(13)),
  focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.0),
      borderRadius: BorderRadius.circular(13)),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white.withOpacity(0.5), width: 2.0),
      borderRadius: BorderRadius.circular(13)),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
      borderRadius: BorderRadius.circular(13)),
);
