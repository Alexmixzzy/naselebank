import 'package:flutter/material.dart';
import 'package:step1/interface/components/app/appbar/appbar.dart';
import 'package:step1/interface/router/drawer.dart';
import 'package:step1/themes/colors.dart';
import 'package:step1/themes/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step1/themes/themedata.dart';

class FixedDeposit extends StatefulWidget {
  const FixedDeposit({Key? key}) : super(key: key);

  @override
  _FixedDepositState createState() => _FixedDepositState();
}

class _FixedDepositState extends State<FixedDeposit> {
  @override
  Widget build(BuildContext context) {
    final Responsive adjust  = Responsive(context);
    return Scaffold(
        appBar: appBar.appBar("Fixed Deposit", context),
        drawer: leftbar.drawer(context, page: "Fixed Deposit"),
        
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
