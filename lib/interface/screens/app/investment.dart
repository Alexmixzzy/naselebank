import 'package:flutter/material.dart';
import 'package:step1/interface/components/app/appbar/appbar.dart';
import 'package:step1/interface/router/drawer.dart';
import 'package:step1/themes/colors.dart';
import 'package:step1/themes/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step1/themes/themedata.dart';

class Investment extends StatefulWidget {
  const Investment({Key? key}) : super(key: key);

  @override
  _InvestmentState createState() => _InvestmentState();
}

class _InvestmentState extends State<Investment> {
  @override
  Widget build(BuildContext context) {
    final Responsive adjust  = Responsive(context);
    return Scaffold(
        appBar: appBar.appBar("Investment", context),
        drawer: leftbar.drawer(context, page: "New Investment"),
        
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
