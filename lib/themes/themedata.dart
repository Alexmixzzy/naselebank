import 'package:flutter/material.dart';
import 'package:step1/themes/colors.dart';

class Themes {
  static bool _isDarkTheme = false;
  bool get isDarkTheme=>_isDarkTheme;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  


  static ThemeData get darkTheme {
    return ThemeData(
        //2
        brightness: Brightness.dark,
        scaffoldBackgroundColor: DarkColor.blackBackground,
        backgroundColor: DarkColor.blackBackground,
        dividerColor: DarkColor.iconColorDark,
        primaryColor: DarkColor.primaryColor,
        primaryColorDark:DarkColor.background,
        primaryColorLight: Color.fromARGB(255, 16, 50, 94),
        cardColor:DarkColor.grayBackground,
        canvasColor: DarkColor.blackBackground,
        

        appBarTheme: AppBarTheme(

        )
        // hintColor: DarkColor.fontSecondaryColorDark,
        
        // canvasColor: DarkColor.grayBackground,
        // cardColor: DarkColor.grayBackground, //3
        // buttonTheme: ButtonThemeData(
        //   // 4
        //   shape:
        //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          
        // ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: DarkColor.primaryColor), //textSelectionTheme: TextSelectionThemeData(selectionColor: LightColor.fontColorDark),

          
        );
  }

  static ThemeData get lightTheme {
    return ThemeData(
        //2
        brightness: Brightness.light,
        scaffoldBackgroundColor: LightColor.background,
        backgroundColor: LightColor.background,
        primaryColor: Color.fromARGB(255, 224, 219, 219),
        primaryColorDark: LightColor.primaryColorDark,
        primaryColorLight: LightColor.primaryColorLight,
        canvasColor: LightColor.background3,
        cardColor: LightColor.background2,
        hintColor: Colors.white,
        buttonTheme: ButtonThemeData(
          // 4
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: LightColor.background2,
        ),
        appBarTheme: const AppBarTheme(
          // backgroundColor: Color.fromARGB(255, 163, 110, 77),
            backgroundColor: LightColor.background2,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        bottomNavigationBarTheme:BottomNavigationBarThemeData(
          unselectedItemColor:Colors.white,
          selectedItemColor: LightColor.background,
          elevation: 50,
          ),

          
        
        
        );
  }



}

class PaypalColors {
  static const LightBlue = Color.fromRGBO(0, 154, 224, 1);
  static const DarkBlue = Color.fromRGBO(18, 106, 175, 1);
  static const LightGrey19 = Color.fromRGBO(112,112,112, 0.19);
  static const LightGrey = Color.fromRGBO(242, 242, 242, 1);
  static const Grey = Color.fromRGBO(157, 157, 157, 1);
  static const Black50 = Color.fromRGBO(0, 0, 0, 0.5);
  static const Green = Color.fromRGBO(61, 179, 158, 1);
}

Themes theme = Themes();
Themes currentTheme = Themes();

LightColor lightColor = LightColor();
DarkColor darkColor = DarkColor();

appColors(bool isDark){
  return isDark?darkColor:lightColor;
}


