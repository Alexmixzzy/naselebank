import 'package:flutter/material.dart';
import 'package:step1/interface/components/app/appbar/appbar.dart';
import 'package:step1/interface/router/drawer.dart';
import 'package:step1/themes/colors.dart';
import 'package:step1/themes/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step1/themes/themedata.dart';

class LoanPage extends StatefulWidget {
  const LoanPage({Key? key}) : super(key: key);

  @override
  _LoanPageState createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive adjust = Responsive(context);
    return Scaffold(
        appBar: appBar.appBar("Loan", context),
        drawer: leftbar.drawer(context, page: "Loan"),
        body: ListView(
          children: [
            Container(
              height: adjust.height * 0.99,
              padding: EdgeInsets.all(6),
              color: Theme.of(context).backgroundColor,
              child: Stack(children: [
                Column(
                  children: [
                    Container(),
                    SizedBox(
                      height: 0,
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment:
                              AlignmentDirectional.topStart, // <-- SEE HERE
                          child: Container(
                            width: 300,
                            height: 320,
                            color: Colors.redAccent,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          width: 300,
                          height: 250,
                          color: Colors.amberAccent,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          width: 300,
                          height: 250,
                          color: Colors.deepPurpleAccent,
                        ),
                      ],
                    )
                  ],
                )
              ]),
            ),
          ],
        ));
  }
}
