import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:step1/interface/screens/auth/login/login.dart';

      boardingIndexComponent(PageController _controller,int pagaId, context, isLastPage){

        return Container(
            alignment: Alignment(0,0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                pagaId >0 ? GestureDetector(
                  onTap: () {
                    _controller.previousPage(duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                  },
                  child: const Text(
                    "Back", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),
                  )
                  ):GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Login();
                    }));
                  },
                  child: const Text(
                    "Skip", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),
                  )
                  ),
                SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    
                    effect: const WormEffect(
                      activeDotColor: Colors.redAccent,
                      dotHeight: 16,
                      dotWidth: 16,
                      type: WormType.thin,
                      // strokeWidth: 5,
                      dotColor: Colors.white,
                    ),
                  ),

                isLastPage ? GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const Login();
                    }));
                  },
                  child: const Text(
                    "Done", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),
                  )
                  ):
                  GestureDetector(
                  onTap: () {
                    _controller.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                  },
                  child: const Text(
                    "Next", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),
                  )
                  ),
              ],
            ),
          );
        

      }     