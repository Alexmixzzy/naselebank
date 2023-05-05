import 'package:flutter/material.dart';
import 'package:step1/interface/components/auth/login/login_components.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.transparent,
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
                child: loginComponent.loginComponents(context),
              ),
    );
  }
}
