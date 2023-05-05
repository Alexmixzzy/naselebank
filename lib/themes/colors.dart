import 'package:flutter/material.dart';

class DarkColor {
  static final primaryColor = Color(0xFF45C2DA);
  // static final background = Color(0xFF191B2A);
  static const background = Color(0xFF0F233D);
  static const background3 = Color.fromARGB(255, 163, 110, 77);
  static const secondaryColor = Color.fromRGBO(30, 132, 148,1);
  static const cardColorLight = Colors.white;
  static const cardColorDark = Colors.black;
  static const fontColorLight = Colors.black;
  static const fontColorDark = Colors.white;
  static const fontSecondaryColorLight = Colors.black26;
  static const fontSecondaryColorDark = Colors.white24;
  static const iconColorLight = Colors.black;
  static const iconColorDark = Colors.white;
  static const fontColorDarkTitle = Color(0xFF32353E);
  static const grayBackground = Color(0xFF172E4D);
  static const whiteBacground = Color(0xFFF4F5F7);
  // static final grayBackground = Color(0xFF16223A);
  static const blackBackground = Color(0xFF12151C);
  static const bottomBarDark = Color(0xFF202833);
}

class LightColor {
  static const primaryColor = Color.fromRGBO(40, 122, 138, 1);
  static const primaryColorDark = Color.fromARGB(255, 15, 76, 88);
  static const primaryColorLight = Color.fromARGB(255, 33, 86, 96);
  // static final background = Color(0xFF191B2A);
  static const background = Color.fromRGBO(97, 190, 209,1);
  static const background2 = Color.fromRGBO(40, 122, 138, 1);
  //static const background3 = Color.fromRGBO(99, 55, 28,1);
  static const background3 = Color.fromARGB(255, 163, 110, 77);
  static const cardColorLight = Colors.white;
  static const cardColorDark = Colors.black;
  static const fontColorLight = Colors.black;
  static const fontColorDark = Colors.white;
  static const fontSecondaryColorLight = Colors.black26;
  static const fontSecondaryColorDark = Colors.white24;
  static const iconColorLight = Colors.black;
  static const iconColorDark = Colors.white;
  static const fontColorDarkTitle = Color(0xFF32353E);
  static const grayBackground = Color(0xFF172E4D);
  static const whiteBacground = Color(0xFFF4F5F7);
  // static final grayBackground = Color(0xFF16223A);
  static const blackBackground = Color(0xFF12151C);
  static const bottomBarDark = Color(0xFF202833);
  static const bottomBarDarkx = LinearGradient(colors: [
    primaryColor,
    background,
    background2,
    background3
  ]);
}

double baseHeight = 640.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}







