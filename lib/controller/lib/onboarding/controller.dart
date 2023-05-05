import 'package:flutter/material.dart';

class PageViewController with ChangeNotifier{

  PageController controller = PageController();
  bool isLastPage = false;
  bool isInital = true;
  int  pagaId = 0;


  PageController  get pageControl=>controller;

  void onPageChanged_(index) {
      notifyListeners();
      isLastPage = (index==2);
      pagaId = index;

      //print(hidePass);
  }


}