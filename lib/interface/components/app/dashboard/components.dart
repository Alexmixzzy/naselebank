import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:step1/models/locals.dart';
import 'package:step1/themes/responsive.dart';
import 'package:step1/themes/themedata.dart';

class DashComponent {
  BoxDecoration _tileDecoration(BuildContext context) {
    return BoxDecoration(
      color: Theme.of(context).cardColor,
      border:
          Border.all(color: Colors.white, width: 0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      boxShadow: [
        BoxShadow(
            color: PaypalColors.LightGrey19,
            offset: Offset(0, 0),
            blurRadius: 3,
            spreadRadius: 1)
      ],
    );
  }

  Widget transactionList(
      {required BuildContext context,
      required Responsive adjust,
      String? name,
      Color? color1,
      Color? color2,
      bool isDebit = false,
      String? amount,
      String? desc}) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 15),
      decoration: _tileDecoration(context),
      child: Column(
        children: [
          ListTile(
            leading: ClipOval(
              child: Container(
                color: Colors.white, //color1??Colors.green
                child: Icon(isDebit?Icons.arrow_downward_rounded: Icons.arrow_upward_rounded, color: color1??Colors.green,),
                // Image.asset(
                //   LocalData.logo,
                //   fit: BoxFit.scaleDown,
                //   width: 35.0,
                //   height: 35.0,
                // )
              ),
            ),
            title: Text(
              name ?? 'Credit Payment ',
              style: TextStyle(
                  fontFamily: "worksans",
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).iconTheme.color),
            ),
            subtitle: Text(
              'Sept 8, 2020',
              style: TextStyle(
                  fontFamily: "worksans",
                  fontWeight: FontWeight.w300,
                  color: Colors.white70),
            ),
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${isDebit ? '-' : '+'} ${amount ?? '207,890.00 USD'}',
                    style: TextStyle(
                        fontFamily: "worksans",
                        color: color1 ?? Color.fromARGB(255, 86, 230, 91)),
                  ),
                  //SizedBox(height: 5,),
                  Text(
                    '${isDebit ? '+' : '-'}0.00 USD',
                    style: TextStyle(
                        fontFamily: "worksans",
                        color: color2 ?? Color.fromARGB(255, 249, 17, 17),
                        fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          Text(
            desc ?? 'BitPay transaction done sucess terms bill ',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "worksans",
                fontWeight: FontWeight.w500,
                color: Theme.of(context).iconTheme.color,
                overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }

  Widget iconCurve(
      {required BuildContext context,
      required String text,
      required Responsive adjust,
      required String path,
      IconData? icon}) {
    return InkWell(
      onTap: (() {
        context.go(path);
      }),
      child: Column(
        children: [
          Container(
              height: 65,
              width: adjust.width * 0.20,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Center(
                  child: Icon(
                    icon??FontAwesomeIcons.chartLine,
                    size: 30,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )),
          Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(
                    color: Theme.of(context).iconTheme.color, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget moneyCard(BuildContext context, Responsive adjust,
      {String? name,
      String? type,
      String? account,
      required dynamic balance,
      String? currency,
      Color? color,
      LinearGradient? linearColor}) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: 4, bottom: 15, right: 10),
        //padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
        width: adjust.landScape ? adjust.width * 1 : adjust.width * 0.95,
        decoration: BoxDecoration(
          //color: ThemeCall().colorsgrey,

          gradient: linearColor ??
              const LinearGradient(
                  colors: [
                    //Colors.red, Colors.blue, Colors.greenAccent

                    //Colors.red, Theme.of(context).primaryColor,
                    //Theme.of(context).backgroundColor,
                    Color.fromRGBO(0, 70, 127, 1),
                    Color.fromRGBO(165, 204, 130, 1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // stops: [
                  //   0.1,
                  //   0.4,
                  //   //0.6,
                  // ] //0.9
                  ),

          border: Border.all(
              color: Colors.white, width: 0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
          boxShadow: [
            BoxShadow(
                //color: Theme.of(context).cardColor,
                color: color ?? Theme.of(context).cardColor,
                offset: Offset(0, 3),
                blurRadius: 6,
                spreadRadius: 1)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 12,
                    ),
                    //Image.assetxx('assets/images/Paypal-logo.png', height: 30, color: Colors.white,),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Icon(
                        Icons.table_chart,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        '${name ?? 'LOAN'}| BALANCE',
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "worksans",
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                //Icon(Icons.info_outline, size: 18)
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 5, top: 5),
                      child: Text(
                        "Add Account ",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20, top: 5),
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //Image.asset('assets/images/chip_thumb.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        adjust.orientation.index == Orientation.landscape.index
                            ? SizedBox(
                                width: adjust.width * 0.35,
                              )
                            :balance <100000? SizedBox(width: 70,):SizedBox(),
                        currency =='' || currency==null? Text(
                          LocalData.sym,
                          style: TextStyle(
                            fontFamily: "vistolsans",
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ):Container(),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            Text(
                              
                              localData.curFormat(amount:balance, code: currency)
                              ,
                              textAlign: TextAlign.center,
                              style:  TextStyle(
                                fontFamily: "sfprotext",
                                fontSize: balance> 100000000?30:45,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  'Available |',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: "worksans",
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                                //SizedBox(width: 10),

                                SizedBox(width: 10),
                                Text(
                                  currency??LocalData.currency,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: "worksans",
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //SizedBox(width: 80),
                        //Icon(Icons.arrow_forward,color: Colors.white,size: 28,),
                        SizedBox(height: 1),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 35,
                  width: adjust.width * 0.48,
                  child: TextButton(
                    //color: PaypalColors.LightGrey,
                    //textColor: PaypalColors.DarkBlue,
                    child: Text(
                      "ALEX CHUKWUMA OGUAGU",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "worksans",
                          color: Theme.of(context).iconTheme.color,
                          fontSize: 16),
                    ),
                    onPressed: () {},
                    //shape: RoundedRectangleBorder(
                    //borderRadius: BorderRadius.circular(30.0),),
                  ),
                ),

                // Spacer(),
                SizedBox(
                  height: 35,
                  width: adjust.width * 0.45,
                  child: TextButton(
                    //color: PaypalColors.LightGrey,
                    // textColor: PaypalColors.DarkBlue,
                    style: ButtonStyle(),
                    child: Text(
                      "ACCT-77098096677",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "worksans",
                          color: Theme.of(context).iconTheme.color,
                          fontSize: 16),
                    ),
                    onPressed: () {},
                    //shape: RoundedRectangleBorder(
                    //borderRadius: BorderRadius.circular(30.0),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

DashComponent dashComponent = DashComponent();
