import 'package:flutter/material.dart';
import 'package:step1/interface/components/onboarding/page2/page_components.dart';

class IntroPage2 extends StatelessWidget {
const IntroPage2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      //color: Colors.purple[400],
      alignment: Alignment.center,
      //color: Colors.blue[400],
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg/un18.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Page2Components()
      );
  }
}