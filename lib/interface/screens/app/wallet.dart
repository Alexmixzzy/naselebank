import 'package:flutter/material.dart';
import 'package:step1/interface/components/app/appbar/appbar.dart';
import 'package:step1/interface/components/app/wallet/components.dart';
import 'package:step1/interface/router/drawer.dart';
import 'package:step1/themes/colors.dart';
import 'package:step1/themes/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step1/themes/themedata.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    final Responsive adjust = Responsive(context);
    return Scaffold(
        appBar: appBar.appBar("Wallet", context,route: "/wallet"),
        drawer: leftbar.drawer(context, page: "Wallet"),
        body: ListView(
          children: [
            Container(
              height: adjust.height * 0.99,
              padding: EdgeInsets.all(6),
              //color: Theme.of(context).backgroundColor,
              color: Theme.of(context).primaryColorDark,
              child: Stack(children: [
                Column(
                  children: [
                    Container(),
                    SizedBox(
                      height: 0,
                    ),
                    walletComponents.cards(context),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 50,),
                        walletComponents.addCard(context, adjust),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              walletComponents.expense(context, "Income",
                                  "\$5,784.94", adjust, Colors.green),
                              walletComponents.expense(context, "Expense",
                                  "\$2,523.00", adjust, Colors.redAccent),
                            ],
                          ),
                        ),
                        SizedBox(height: 50,),
                        
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              walletComponents.iconCurve(
                                  context, "Trransfer", adjust),
                              walletComponents.iconCurve(
                                  context, "Bills", adjust),
                              walletComponents.iconCurve(
                                  context, "Scan", adjust),
                              walletComponents.iconCurve(
                                  context, "More", adjust),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            "Fast Send Money",
                            style: TextStyle(
                                color: Theme.of(context).iconTheme.color,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              walletComponents.friends(true, context),
                              walletComponents.friends(true, context),
                              walletComponents.friends(true, context),
                              walletComponents.friends(true, context),
                              walletComponents.friends(false, context),
                            ],
                          ),
                        )
                      ],
                    ))
                  ],
                )
              ]),
            ),
          ],
        ));
  }
}
