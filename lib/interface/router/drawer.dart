import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:step1/interface/router/router_name.dart';

class LeftBar {
  
  Widget itemDrawer({required IconData icon, required String txt, required BuildContext context,String path="/home" }) {
    return InkWell(
      onTap: () {
        context.go(path);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 20.0),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: 25.0,
              color: Theme.of(context).iconTheme.color,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    txt,
                    style: TextStyle(color: Colors.white70, fontSize: 15.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget drawer(BuildContext context, {String? page}) {
    return Drawer(
      
        child: Container(
      // color: Color(0xFF29303C),
    
      color: Theme.of(context).cardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                width: 250.0,
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(350.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.repeated,
                    //colors: [Color(0xFF15EDED), Color(0xFF029CF5)]
                    colors: [Color(0xFF29303C), Color(0xFF029CF5)],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70, left: 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/images/logo/logo.png", height: 35.0),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 7.0),
                      child: Text(
                        "Fenchi Bank",
                        style: TextStyle(
                            fontFamily: "Sans",
                            color: Colors.white,
                            fontSize: 27.0,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 3.5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Text(
                        page??"DashBoard",
                        style: const TextStyle(
                            fontFamily: "Sans",
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 3.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Flexible(
            child: ListView(
              children: <Widget>[
                itemDrawer(icon:Icons.home_rounded, txt:"Home", context:context, path: RouterPath.home),
                const SizedBox(height: 3.0,),
                
                    itemDrawer(icon:Icons.account_balance_wallet, txt:"Loan", context:context, path: RouterPath.loan),
                    
                  const SizedBox(height: 3.0,),
                   itemDrawer(icon:Icons.credit_card_rounded, txt:"Cards", context:context, path: RouterPath.cards),
                   const SizedBox(height: 3.0,),
                   itemDrawer(icon:Icons.account_balance_wallet, txt:"Investment", context:context, path: RouterPath.investment),
                   const SizedBox(height: 3.0,),
                   itemDrawer(icon:Icons.account_balance_wallet, txt:"Fixed Deposit", context:context, path: RouterPath.fixed),
                    const SizedBox(height: 3.0,),
                   itemDrawer(icon:Icons.account_balance_wallet, txt:"Test Page", context:context, path: RouterPath.test),
              ],
            ),
          ),
//
        ],
      ),
    ));
  }
}

LeftBar leftbar = LeftBar();
