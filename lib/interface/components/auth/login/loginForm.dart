import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:step1/controller/forms/login_controller.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);

  final usernameControl = TextEditingController();
  late TextInputType keyboardType;
  late TextAlign textAlign;



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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        
          child: Column(
        children: [
          textForms(
              controller: usernameControl,
              keyboardType: TextInputType.text,
              obscure: false,
              textAlign: TextAlign.left,
              must: true,
              context: context,
              hint: 'Enter Username',
              label: 'Username',
              widgetIcon: Icons.person_rounded),
          textForms(
              controller: usernameControl,
              keyboardType: TextInputType.text,
              obscure: false,
              textAlign: TextAlign.left,
              must: true,
              context: context,
              hint: 'Enter Username',
              label: 'Username',
              widgetIcon: Icons.person_rounded),
        ],
      )),
    );
  }
}

class LoginForms extends StatelessWidget {
  LoginForms({
    Key? key,
  }) : super(key: key);

  //final usernameControl = context.read<LoginController>().;
  
  //late  bool _hidePass = true;

  


  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context) {
    final username = context.watch<LoginController>().userNameControl;
    final password =  context.watch<LoginController>().passwordControl;
    bool hidePass =  context.watch<LoginController>().hidePass;
    // TODO: implement build
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        Form(
          //key: context.read<LoginController>().formKey,
          key: loginFormKey,
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
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    icon: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.person,color: Color.fromRGBO(13, 56, 63,1)),
                    ),
                    
                    contentPadding: EdgeInsets.all(0.0),
                    filled: true,
                    fillColor: Colors.transparent,
                    labelText: "Username",
                    hintText: "Enter Username",
                    hintStyle: TextStyle(color: Color.fromRGBO(40, 169, 189,1), fontSize: 20),
                    labelStyle: TextStyle(color: Color.fromRGBO(27, 113, 126,1), fontSize: 20),
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
                  decoration:  InputDecoration(
                    border: InputBorder.none,
                    icon: const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(Icons.lock_rounded, color: Color.fromRGBO(13, 56, 63,1),),
                    ),
                    suffixIcon: hidePass ? InkWell(
                      onTap: () {
                        context.read<LoginController>().showPass(hidePass);
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(Icons.remove_red_eye, color: Color.fromRGBO(13, 56, 63,1)),
                      ),
                    ):InkWell(
                      onTap: () {
                        context.read<LoginController>().showPass(hidePass);
                      },
                      child: const Padding( 
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(FontAwesomeIcons.eyeSlash, color:Color.fromRGBO(13, 56, 63,1),),
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(0.0),
                    filled: true,
                    fillColor: Colors.transparent,
                    labelText: "Password",
                    hintText: "Enter Password",
                    hintStyle: const TextStyle(color: Color.fromRGBO(40, 169, 189,1), fontSize: 20),
                    labelStyle: const TextStyle(color: Color.fromRGBO(27, 113, 126,1), fontSize: 20),
                  ),
                ),
              ),
            
              const  SizedBox(height: 30,),
              Container(
                child: Material(
      
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          context.read<LoginController>().logUser(context);
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
    ),
              ),
  
          
            ],
          ),
        ),
      ],
    );
  }
}
