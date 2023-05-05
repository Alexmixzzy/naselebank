import 'package:flutter/material.dart';
import 'package:step1/interface/components/onboarding/page3/page_data.dart';

class Page3Components extends StatelessWidget {
  const Page3Components({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 70,
          ),
          logoContainer(),
          //const SizedBox(height: 20.0,),
          boardImage(),
          boardingText(),
          const SizedBox(
            height: 30,
          ),
          boardingButton(),
        ],
      ),
    );
  }
}
