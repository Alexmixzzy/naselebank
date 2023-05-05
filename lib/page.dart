import 'package:flutter/material.dart';
import 'package:step1/interface/components/app/appbar/appbar.dart';
import 'package:step1/interface/router/drawer.dart';
import 'package:step1/themes/colors.dart';
import 'package:step1/themes/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step1/themes/themedata.dart';

class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    final Responsive adjust  = Responsive(context);
    return Scaffold(
        appBar: appBar.appBar("Empty Page", context),
        drawer: leftbar.drawer(context, page: "Empty Page"),
        
        body: ListView(
          children: [
            Container(
              height: adjust.height*0.99,
              padding: EdgeInsets.all(6),
              color: Theme.of(context).backgroundColor,
              child: Stack(children: [
                Column(
                  children: [
                    Container(),
                    SizedBox(
                      height: 0,
                    ),
                  
                  ],
                )
              
              ]),
            ),
          ],
        ));
  }
}
