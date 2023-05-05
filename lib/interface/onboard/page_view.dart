import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:step1/controller/lib/onboarding/controller.dart';
import 'package:step1/interface/components/onboarding/page_view/bottom_components.dart';
import 'package:step1/interface/onboard/page1.dart';
import 'package:step1/interface/onboard/page2.dart';
import 'package:step1/interface/onboard/page3.dart';
import 'package:step1/interface/screens/auth/login/login.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({ Key? key }) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  // PageController _controller = PageController();
  // bool isLastPage = false;
  // bool isInital = true;
  // int  pagaId = 0;
  //final _control = Provider.read<PageViewController>().controller;
  
  @override
  Widget build(BuildContext context) {
    //final username = context.watch<LoginController>().userNameControl;
    PageController controller = context.watch<PageViewController>().controller;
    bool isLastPage = context.watch<PageViewController>().isLastPage;
    bool isInitial = context.watch<PageViewController>().isInital;
    int pageId = context.watch<PageViewController>().pagaId;

    return Scaffold(
      backgroundColor: Colors.transparent,
      
      body: Stack(
        
        children: [
          PageView(
            controller:context.read<PageViewController>().controller,
            physics: const ClampingScrollPhysics(),
            
            onPageChanged: (index) {
              
              context.read<PageViewController>().onPageChanged_(index);

            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),

            ],
          ),

          boardingIndexComponent(controller, pageId, context, isLastPage),
        ],
        
      ),
    );
  }
}