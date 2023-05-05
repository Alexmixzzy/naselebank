import 'package:flutter/material.dart';
import 'package:step1/interface/components/app/appbar/appbar.dart';
import 'package:step1/interface/components/app/transfer/components.dart';
import 'package:step1/interface/router/drawer.dart';
import 'package:step1/themes/colors.dart';
import 'package:step1/themes/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step1/themes/themedata.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive adjust = Responsive(context);
    return Scaffold(
        appBar: appBar.appBar("Fund Transfer", context),
        drawer: leftbar.drawer(context, page: "Transfer"),
        body: ListView(
          children: [
            Container(
              height: adjust.height * 0.99,
              padding: EdgeInsets.all(6),
              color: Theme.of(context).primaryColorLight,
              child: Stack(children: [
                Column(
                  children: [
                   SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 40,
                      
                        child: Column(
                          children:  [
                            Center(child: Text("TRANSFER METHODS", style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).iconTheme.color,), )),
                            SizedBox(height: 5),
                            Center(child: Text("Where do you want to send money to ?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Theme.of(context).iconTheme.color,),)),
                          ],
                        ),
                      
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      height: 20,
                    ),

                    tfComponent.payType(
                        context: context,
                        adjust: adjust,
                        title: 'Own Account Transfer',
                        subTitle: 'Send money to your other account',
                        name: 'personal'),
                    SizedBox(
                      height: 20,
                    ),
                    //tfComponent.payType(context:context, adjust: adjust),
                    tfComponent.payType(
                        context: context,
                        adjust: adjust,
                        title: 'Transfer to Mobixa Bank Account',
                        subTitle: 'Send money to your mobixa account',
                        name: 'domestic'),

                    SizedBox(
                      height: 20,
                    ),

                    tfComponent.payType(
                        context: context,
                        adjust: adjust,
                        title: 'Transfer to Other Bank\'s Account',
                        subTitle: 'Send money to other none mobixa bank',
                        name: 'local'),

                    SizedBox(
                      height: 20,
                    ),

                    tfComponent.payType(
                        context: context,
                        adjust: adjust,
                        title: 'Make Foreign Transfer',
                        subTitle: 'Send money international',
                        name: 'inter'),

                    SizedBox(
                      height: 20,
                    ),

                    tfComponent.payType(
                        context: context,
                        adjust: adjust,
                        title: 'Transfer Money to Card',
                        subTitle: 'Send money to your credit card',
                        name: 'personal'),

                    SizedBox(
                      height: 20,
                    ),

                    tfComponent.payType(
                        context: context,
                        adjust: adjust,
                        title: 'Transfer to eCoin Wallet',
                        subTitle: 'Send money to your wallet account',
                        name: 'personal'),
                  ],
                )
              ]),
            ),
          ],
        ));
  }
}
