import 'package:flutter/material.dart';
import 'package:step1/interface/components/onboarding/page3/page_components.dart';

class IntroPage3 extends StatelessWidget {
const IntroPage3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      //color: Colors.teal[400],
      alignment: Alignment.center,
      //color: Colors.blue[400],
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg/grass.jpg"),
          fit: BoxFit.cover,
        ),
      ),

      child: const Page3Components()


      );
  }
}