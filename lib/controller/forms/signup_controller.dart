import 'package:flutter/material.dart';


  final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();
  
  class SignupController with ChangeNotifier {

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  
    final userNameControl = TextEditingController();
    final emailControl = TextEditingController();
    final fullNameControl = TextEditingController();
    final passwordControl = TextEditingController();
    late bool hidePass = true;
    

    String? username;
    String? password;
    
    void showPass(value) {
      notifyListeners();
      hidePass = !value;

      
  }
    


    void signUserUp() {
    
    final formState = signupFormKey.currentState;
    if (formState!.validate()) {
      
      if (!signupFormKey.currentState!.validate()) {
      
        return;
        
      }else{
      signupFormKey.currentState!.save();
      
      

      }
  
    }else{

    }
  }

    

}

SignupController loginController = SignupController();
