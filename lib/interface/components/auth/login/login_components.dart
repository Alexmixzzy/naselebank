import 'package:flutter/material.dart';
import 'package:step1/interface/components/auth/login/loginForm.dart';
import 'package:step1/interface/components/auth/login/login_data.dart';

class LoginComponents {
  late TextEditingController _controller;
  final usernameControl = TextEditingController();
  late TextInputType keyboardType;
  late TextAlign textAlign;

  Widget loginComponents(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              loginDataCompo.topCurve(),
              //loginDataCompo.logoContainer(),

              Expanded(
                child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                      //color: Color.fromRGBO(1, 95, 111,1),
                      color: Colors.transparent,
                      image: const DecorationImage(
                        image: AssetImage("assets/images/bg/un17.jpg"),
                        fit: BoxFit.cover,
                      ),

                      border: Border.all(
                        width: 8,
                        color: Colors.transparent, // Colors.redAccent
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60)),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 12),
                          child: LoginForms()
                          ),
                       // const SizedBox(height: 30,),
                        //loginDataCompo.loginButton(),
                        const SizedBox(height: 70,),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              loginDataCompo.signupButton(context,'Signup','/signup'),
                              loginDataCompo.signupButton(context,'Recover','/recover'),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget loginComponentsx(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              loginDataCompo.topCurve(),
              //loginDataCompo.logoContainer(),

              loginDataCompo.textForms(
                  controller: usernameControl,
                  keyboardType: TextInputType.text,
                  obscure: false,
                  textAlign: TextAlign.left,
                  must: true,
                  context: context,
                  hint: 'Enter Username',
                  label: 'Username',
                  widgetIcon: Icons.person_rounded),
              const SizedBox(
                height: 20,
              ),

              loginDataCompo.userName(
                  name: 'username', hint: 'Enter Username', label: 'UserName'),
              const SizedBox(
                height: 20,
              ),
              loginDataCompo.userName(
                  name: 'email', hint: 'Enter Email', label: 'Email Address'),
              const SizedBox(
                height: 80,
              ),
              //loginDataCompo.userName(name: 'password',hint: 'Enter Password', label: 'Password'),
              //const SizedBox(height: 20,),
              //loginDataCompo.loginButton(),
            ],
          ),
        ),
      ],
    );
  }
}

final loginComponent = LoginComponents();
