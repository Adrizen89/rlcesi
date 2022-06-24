import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rlcesi/commons/constants.dart';

class ColorTheme {

  bool isDarkMode() {
    final window = WidgetsBinding.instance.window;
    final mode = MediaQueryData.fromWindow(window).platformBrightness;
    return (mode == Brightness.dark);
  }

  Color pointer() => primaryColor;
  Color base() => (isDarkMode()) ? Colors.grey: Colors.white ;
  Color accent() => (isDarkMode()) ? Colors.white : Color.fromARGB(255, 224, 217, 217);
}