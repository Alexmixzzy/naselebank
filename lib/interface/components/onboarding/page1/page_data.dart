import 'package:flutter/material.dart';
import 'package:step1/models/locals.dart';

logoContainer() {
    return Container(
      margin: EdgeInsets.all(20),
      width: 100,
      height: 100,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage(LocalData.logo), fit: BoxFit.fill),
      ),
      //child: Image.asset('assets/images/illustrations/blooming.png'),
    );
  }

  boardImage() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: const DecorationImage(
            image: AssetImage('assets/images/illustrations/mobilesecure.png'),
            fit: BoxFit.cover,
            //colorFilter: ColorFilter.mode(Colors.redAccent, BlendMode.color),
            colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken),
          ),
          border: Border.all(
            width: 8,
            color: Colors.transparent, // Colors.redAccent
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }

  boardingText() {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        "From helping you manage the unexpected surprises life can throw your way to nurturing the prosperity of your family and planning for the future, Premier is designed to help you thrive. Eligibility criteria apply Eligibility criteria apply for Premier",
        style: TextStyle(
            color: Colors.white, fontSize: 21, fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }

  boardingButton() {
    return Container(
      height: 60,
      width: 200,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            shadowColor: Color.fromARGB(255, 83, 81, 81)
            
             // foreground
          ),
          onPressed: (() {}),
          child: const Text(
            "Get Started",
            style: TextStyle(
                color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
          )),
    );
  }
