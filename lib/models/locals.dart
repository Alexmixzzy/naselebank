import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LocalData {
    static String logo = "assets/images/logo/logo.png";
    static const String currency = 'USD';
    static const String currency1 = 'EUR';
    static const String currency2 = 'GBP';
    static String name = 'Fenchi Bank';
    static String sym = '\$';
    static String sym1 = '€';
    static String sym2 = '£';
    static  get fm =>NumberFormat("###.0#", "en_US");



  //var f = NumberFormat("###.0#", "en_US");
  
  

    symb(code) {
      fm.format();
    switch (code) {
      case currency:{sym;}break;
      case currency1:{sym1;}break;
      case currency2:{sym2;}break;
      default:{sym;}
        break;
    }
  }

  curFormat({required amount, String? code}) {
    //if(amount is int)
    // var amount = int.parse(amountx);
    //var con = NumberFormat.currency(locale:'en_US',name: 'USD',symbol: 'USD', decimalDigits: amount );
    return NumberFormat.simpleCurrency(name:code??'').format(amount);
  }

  
}
//LocalData.fm.simpleCurrency().format(829820.899)
LocalData localData = LocalData();