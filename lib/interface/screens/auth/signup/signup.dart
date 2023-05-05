import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:step1/interface/components/auth/signup/signup_components.dart';

class Signup extends StatelessWidget {
const Signup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: Container(
                alignment: Alignment.center,
                //color: Colors.blue[400],
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg/un17.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: signupComponent.signupComponents(context),
              ),
    );
  }
}