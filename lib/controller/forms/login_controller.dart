

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:step1/interface/router/router_name.dart';


  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  
  class LoginController with ChangeNotifier {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    String _initial = "Select";
    bool fingerPrint = false;
    String _fingerText ="OFF";
    final userNameControl = TextEditingController();
    final passwordControl = TextEditingController();
    late bool hidePass = true;
    

    String? username;
    String? password;
    

    // getters 

    String  get initial=>_initial;
    String  get fingerText=>_fingerText;

    void getCoins_(value) {
      notifyListeners();
    String v = "Select";
    String val = value.toLowerCase();
      if (val == v.toLowerCase()) {
      
        print('please select something');
      } else {
        
        _initial = value;
      }


    //print(value);
  }
    
    void showPass(value) {
      notifyListeners();
      hidePass = !value;

    
  }
    
  void sendOut(BuildContext context){
    context.go(RouterPath.home);

  }

    void logUser(BuildContext context) {
    
    final formState = loginFormKey.currentState;
    if (formState!.validate()) {
      
      if (!loginFormKey.currentState!.validate()) {
      
        return;
        
      }else{
      loginFormKey.currentState!.save();
      
      context.go(RouterPath.home);

      }
  
    }else{

    }
  }

    

}

LoginController loginController = LoginController();
