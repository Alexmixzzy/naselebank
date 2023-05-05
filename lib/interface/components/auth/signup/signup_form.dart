import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:step1/controller/forms/signup_controller.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    Key? key,
  }) : super(key: key);


  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context) {
    final username = context.watch<SignupController>().userNameControl;
    final password = context.watch<SignupController>().passwordControl;
    final fullname = context.watch<SignupController>().fullNameControl;
    final email = context.watch<SignupController>().emailControl;
    bool hidePass = context.watch<SignupController>().hidePass;
    // TODO: implement build
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        Form(
          //key: context.read<LoginController>().formKey,
          key: signupFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //backgroundBlendMode: BlendMode.difference,
                ),
                child: TextFormField(
                  style: const TextStyle(color: Colors.grey, fontSize: 22),
                  textAlign: TextAlign.left,
                  obscureText: false,
                  controller: username,
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  autofocus: false,
                  validator: (input) {
                    if (input!.isEmpty) {
                      //toMsg('$hint is required');
                      //return '$input data is required ';
                      return '';
                    }
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.person,
                          color: Color.fromRGBO(13, 56, 63, 1)),
                    ),
                    contentPadding: EdgeInsets.all(0.0),
                    filled: true,
                    fillColor: Colors.transparent,
                    labelText: "Username",
                    hintText: "Enter Username",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(40, 169, 189, 1), fontSize: 20),
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(27, 113, 126, 1), fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //backgroundBlendMode: BlendMode.difference,
                ),
                child: TextFormField(
                  style: const TextStyle(color: Colors.grey, fontSize: 22),
                  textAlign: TextAlign.left,
                  obscureText: false,
                  controller: fullname,
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  autofocus: false,
                  validator: (input) {
                    if (input!.isEmpty) {
                      //toMsg('$hint is required');
                      //return '$input data is required ';
                      return '';
                    }
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.person,
                          color: Color.fromRGBO(13, 56, 63, 1)),
                    ),
                    contentPadding: EdgeInsets.all(0.0),
                    filled: true,
                    fillColor: Colors.transparent,
                    labelText: "Fullname",
                    hintText: "Enter Full Name",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(40, 169, 189, 1), fontSize: 20),
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(27, 113, 126, 1), fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //backgroundBlendMode: BlendMode.difference,
                ),
                child: TextFormField(
                  style: const TextStyle(color: Colors.grey, fontSize: 22),
                  textAlign: TextAlign.left,
                  obscureText: false,
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  autofocus: false,
                  validator: (input) {
                    if (input!.isEmpty) {
                      //toMsg('$hint is required');
                      //return '$input data is required ';
                      return '';
                    }
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.email_rounded,
                          color: Color.fromRGBO(13, 56, 63, 1)),
                    ),
                    contentPadding: EdgeInsets.all(0.0),
                    filled: true,
                    fillColor: Colors.transparent,
                    labelText: "Email",
                    hintText: "Enter Email",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(40, 169, 189, 1), fontSize: 20),
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(27, 113, 126, 1), fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //backgroundBlendMode: BlendMode.difference,
                ),
                child: TextFormField(
                  style: const TextStyle(color: Colors.grey, fontSize: 22),
                  textAlign: TextAlign.left,
                  obscureText: hidePass,
                  controller: password,
                  keyboardType: TextInputType.text,
                  autocorrect: false,
                  autofocus: false,
                  validator: (input) {
                    if (input!.isEmpty) {
                      //toMsg('$hint is required');
                      //return '$input data is required ';
                      return '';
                    }
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.lock_rounded,
                        color: Color.fromRGBO(13, 56, 63, 1),
                      ),
                    ),
                    suffixIcon: hidePass
                        ? InkWell(
                            onTap: () {
                              context
                                  .read<SignupController>()
                                  .showPass(hidePass);
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(Icons.remove_red_eye),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              context
                                  .read<SignupController>()
                                  .showPass(hidePass);
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(Icons.panorama_fish_eye),
                            ),
                          ),
                    contentPadding: const EdgeInsets.all(0.0),
                    filled: true,
                    fillColor: Colors.transparent,
                    labelText: "Password",
                    hintText: "Enter Password",
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(40, 169, 189, 1), fontSize: 20),
                    labelStyle: const TextStyle(
                        color: Color.fromRGBO(27, 113, 126, 1), fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context.read<SignupController>().signUserUp();
                      //logUserIn();
                    },
                    //hoverColor: Colors.red,
                    //focusColor: Colors.red,
                    splashColor: Color.fromRGBO(40, 169, 189, 1),
                    highlightColor: Color.fromRGBO(40, 169, 189, 1),
                    child: Container(
                      height: 70,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/bg/un13.jpg'),
                          fit: BoxFit.cover,
                          //colorFilter: ColorFilter.mode(Colors.redAccent, BlendMode.color),
                          colorFilter:
                              ColorFilter.mode(Colors.grey, BlendMode.darken),
                        ),
                        border: Border.all(
                          width: 8,
                          color: Colors.transparent, // Colors.redAccent
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
