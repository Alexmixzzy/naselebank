import 'package:flutter/material.dart';


Themes currentTheme = Themes();
Themes _myTheme = Themes();

class colorStyle {
  static final primaryColor = Color(0xFF45C2DA);
  // static final background = Color(0xFF191B2A);
  static const background = Color(0xFF0F233D);
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

class colorStyleLight {
  static const primaryColor = Color(0xFF0F233D);
  // static final background = Color(0xFF191B2A);
  static const background = Colors.white;
  static const background2 = Colors.white10;
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

class txtStyle {
  static const headerStyle =  TextStyle(
      fontFamily: "Popins",
      fontSize: 21.0,
      fontWeight: FontWeight.w800,
      color: Color(0xFF45C2DA),
      letterSpacing: 1.5);

  static const descriptionStyle = TextStyle(
      fontFamily: "Sans",
      fontSize: 15.0,
      color: Colors.white70,
      fontWeight: FontWeight.w400);

  static const txtStyleTitle = TextStyle(
      color: Colors.black54, fontWeight: FontWeight.w700, fontSize: 15.0);

  static final headerSuccess = TextStyle(
      color: Colors.green[800], fontWeight: FontWeight.w700, fontSize: 15.0);
  static final headerDanger = TextStyle(
      color: Colors.red[800], fontWeight: FontWeight.w700, fontSize: 15.0);

  static final txtStyleDeskripsi =
      TextStyle(color: Colors.black26, fontWeight: FontWeight.w400);
}

class Themes with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode _myTheme = ThemeMode.light;
 bool get isDarkTheme=>_isDarkTheme;
  //ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme(value) {
    notifyListeners();
    
    bool e = value;
    
    if(e){
      _isDarkTheme = true;
      _myTheme = ThemeMode.dark;
      //_isDarkTheme_ = true;
    }else{
      _isDarkTheme =  false;
      _myTheme = ThemeMode.light;
     //_isDarkTheme_ =  false;
    }
   // _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  
 
          print(e);
          print('pos');
          //print(_isDarkTheme);
          //print(isDarkTheme);
  }

  static ThemeData get darkTheme {
    return ThemeData(
        //2
        brightness: Brightness.dark,
        scaffoldBackgroundColor: colorStyle.background,
        backgroundColor: colorStyle.blackBackground,
        dividerColor: colorStyle.iconColorDark,
        accentColor: colorStyle.primaryColor,
        primaryColor: colorStyle.primaryColor,
        hintColor: colorStyle.fontSecondaryColorDark,
        buttonColor: colorStyle.primaryColor,
        canvasColor: colorStyle.grayBackground,
        cardColor: colorStyle.grayBackground,
        // textSelectionColor: colorStyle.fontColorDark,
        // textSelectionHandleColor: colorStyle.fontColorDarkTitle, //3
        buttonTheme: ButtonThemeData(
          // 4
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          //buttonColor: .lightPurple,
        ));
  }

  static ThemeData get lightTheme {
    return ThemeData(
        //2
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: colorStyleLight.background,
        primaryColor: colorStyleLight.primaryColor,
        buttonColor: colorStyleLight.primaryColor,
        buttonTheme: ButtonThemeData(
          // 4
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: colorStyleLight.primaryColor,
        ));
  }
}

Themes theme = new Themes();
colorStyleLight lightColor = new colorStyleLight();
