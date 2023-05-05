
import 'package:flutter/material.dart';

import 'themedata.dart';

class ThemeChanger extends ChangeNotifier with Themes {
  static bool _isDarkTheme = false;
  bool get isDarkTheme=>_isDarkTheme;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  // void toggleTheme(value) {
  //   //notifyListeners();
    
  //   bool e = value;
    
  //   if(e){
  //   _isDarkTheme = true;
      
  //   }else{
  //     _isDarkTheme =  false;
    
  //   }

  // notifyListeners();


  // }

  void changeTheme(bool value) {
    //notifyListeners();
    
    _isDarkTheme = !value;
      
  

  notifyListeners();


  }



}


ThemeChanger themeChanger = ThemeChanger();



