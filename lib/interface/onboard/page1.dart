import 'package:flutter/material.dart';
import 'package:step1/interface/components/onboarding/page1/page_components.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      //color: Colors.blue[400],
      decoration: const BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage("assets/images/bg/un13.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Page1Components()
    );
  }
}

