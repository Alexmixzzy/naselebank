import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:step1/interface/components/auth/signup/signup_form.dart';
import 'package:step1/models/locals.dart';

class SignupComponents {

  Widget logoContainer() {
    return Container(
      margin: EdgeInsets.all(1),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(LocalData.logo), fit: BoxFit.fill),
      ),
      //child: Image.asset('assets/images/illustrations/blooming.png'),
    );
  }

  topCurve() {
    return Column(
      children: [
        //topCurveInner(),
        const SizedBox(
          height: 20,
        ),
        logoContainer(),

        const SizedBox(
          height: 20,
        ),

        Column(
          children: const [
            Text(
              "Hello! Welcome Back",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Register New Account",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ],
    );
  }

  Widget signupButton(BuildContext context, name, routeName) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          context.go(routeName);
        },
        child: Container(
          height: 60,
          width: 150,
          decoration: BoxDecoration(
            color: Color.fromRGBO(119, 80, 60, 1),
            //backgroundBlendMode: BlendMode.darken,

            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget signupComponents(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              topCurve(),
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
                          height: 20,
                        ),
                        Expanded(
                            //padding: EdgeInsets.only(right: 12),
                            child: Container(
                                padding: EdgeInsets.only(right: 8, left: 8),
                                child: Column(
                                  children: [
                                    SignUpForm(),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          signupButton(
                                              context, 'Login', '/login'),
                                          signupButton(
                                              context, 'Recover', '/recover'),
                                        ],
                                      ),
                                    )
                                  ],
                                ))),
                        // const SizedBox(height: 30,),
                        //loginDataCompo.loginButton(),
                        //const SizedBox(height: 20,),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

final signupComponent = SignupComponents();
