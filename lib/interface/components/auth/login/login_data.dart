import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:step1/interface/widgets/forms/text_form_widget.dart';
import 'package:step1/models/locals.dart';


class LoginData {
  
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

  Widget userName({label, hint, required name}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        //backgroundBlendMode: BlendMode.difference,
      ),
      child: textFormW.textForm(name: name, hint: hint, label: label),
    );
  }

  Widget textForms(
      {String? hint,
      String? label,
      required TextEditingController controller,
      required TextInputType keyboardType,
      required bool obscure,
      Widget? icon,
      required TextAlign textAlign,
      IconData? widgetIcon,
      required bool must,
      required BuildContext context}) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        //backgroundBlendMode: BlendMode.difference,
      ),
      child: TextFormField(
        style: new TextStyle(color: Colors.grey, fontSize: 22),
        textAlign: textAlign,
        obscureText: obscure,
        controller: controller,
        keyboardType: keyboardType,
        autocorrect: false,
        autofocus: false,
        validator: (input) {
          if (must) {
            if (input!.isEmpty) {
              //toMsg('$hint is required');
              return '$hint data is required ';
            }
          }
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(widgetIcon),
          ),
          contentPadding: EdgeInsets.all(0.0),
          filled: true,
          fillColor: Colors.transparent,
          labelText: label,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.blue, fontSize: 20),
          labelStyle: const TextStyle(color: Colors.blue, fontSize: 20),
        ),
      ),
    );
  }

  Widget loginButtonc() {
    return Material(
      
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          
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
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken),
            ),
            border: Border.all(
              width: 8,
              color: Colors.transparent, // Colors.redAccent
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(
            child: Text(
              "Login Now",
              style: TextStyle(
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

  Widget signupButton(BuildContext context,name, routeName) {
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

  topCurveInner() {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(90), topRight: Radius.circular(90)),
        color: Colors.transparent,
        image: DecorationImage(
          // image: AssetImage("assets/images/illustrations/mobilesecure.png"),
          image: AssetImage('assets/images/bg/un12.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken),
        ),
      ),
    );
  }

  topCurvec() {
    return Column(
      children: [
        //topCurveInner(),
        const SizedBox(
          height: 20,
        ),
        loginDataCompo.logoContainer(),

        const SizedBox(
          height: 150,
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
              "Please Login",
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

  topCurve() {
    return Column(
      children: [
        //topCurveInner(),
        const SizedBox(
          height: 20,
        ),
        loginDataCompo.logoContainer(),

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
              "Please Login",
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


}

final loginDataCompo = LoginData();
