import 'package:flutter/material.dart';

class Responsive {
  final BuildContext context;
  Responsive(this.context);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
  bool get landScape =>islandScape();

  double get widtho => width2();
  double get heighto => height2();
  Orientation get orientation => MediaQuery.of(context).orientation;
  //Orientation get isLandScape => 
  //Orientation get orientation => orientations();
  double width2() {
    double width;

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      width = MediaQuery.of(context).size.width; // width = 25% of the screen

    } else {
      width = MediaQuery.of(context).size.width; // width = 10% of the screen

    }

    return width;
  }

  double height2() {
    double height;
    Orientation orientation = MediaQuery.of(context).orientation;

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      height = MediaQuery.of(context).size.height *
          0.25; //height = 25% of the screen
    } else {
      height = MediaQuery.of(context).size.height *
          0.10; //height = 10% of the screen
    }

    return height;
  }

  bool islandScape(){
    Orientation orientations = MediaQuery.of(context).orientation;

    if(orientations.index == Orientation.landscape.index){
      return true;
    }else{
      return false;
    }


  }



}
