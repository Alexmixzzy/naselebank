import 'package:flutter/material.dart';
import 'package:step1/interface/components/app/appbar/appbar.dart';
import 'package:step1/interface/components/app/dashboard/components.dart';
import 'package:step1/interface/router/drawer.dart';
import 'package:step1/interface/router/router_name.dart';
import 'package:step1/themes/responsive.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final Responsive adjust = Responsive(context);
  
    return Scaffold(
        appBar: appBar.appBar("Dashboard", context),
        drawer: leftbar.drawer(context, page: "DashBoard"),
      
        body: ListView(
          children: [
            Container(
              height: adjust.height * 0.99,
              padding: EdgeInsets.only(top: 5.0),
              //color: Theme.of(context).backgroundColor,
              color: Theme.of(context).primaryColorDark,
              child: Stack(children: [
                Column(
                  children: [
                    Container(),
                    const SizedBox(
                      height: 0,
                    ),

                    //dashComponent.balanceCard(context, adjust),
                    Container(
                      // height: MediaQuery.of(context).size.height,
                      //width: adjust.widtho * 0.99,

                      // margin: EdgeInsets.symmetric(vertical: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 268.0,
                      // color: Colors.white,
                      child: ListView(
                        //shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(
                            parent:
                                ScrollPhysics()), // const PageScrollPhysics(), //const ClampingScrollPhysics(), NeverScrollableScrollPhysics()

                        clipBehavior: Clip.hardEdge,
                        // addSemanticIndexes: true,
                        children: <Widget>[
                          //34522839.84
                          dashComponent.moneyCard(context, adjust,
                              name: 'SAVINGS ', balance: 100000000, currency: 'EUR'),
                          dashComponent.moneyCard(context, adjust,
                              balance: 7238940.23,
                              color: Theme.of(context).primaryColorDark,
                              name: 'CHECKING ',
                              linearColor: const LinearGradient(colors: [
                                Colors.red,
                                Colors.blue,
                                Colors.greenAccent,
                              ])),
                          SizedBox(
                            width: 1,
                          ),
                        ],
                      ),
                    ),
                    Container(),
                    SizedBox(
                      height: 20,
                    ),
                    adjust.landScape?Container(): Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: adjust.width *0.99,
                        decoration: BoxDecoration(
                          //color: Theme.of(context).primaryColorDark,
                          color: Theme.of(context).primaryColorLight,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                                dashComponent.iconCurve(
                                    context: context,
                                    text: "Cards",
                                    adjust: adjust,path: RouterPath.cards,
                                    icon: Icons.credit_card_rounded,
                                    ),
                              
                              dashComponent.iconCurve(
                                  context: context,
                                  text: "Investment",
                                  adjust: adjust, path: RouterPath.investment,
                                  icon: Icons.monetization_on_rounded
                                  ),
                              dashComponent.iconCurve(
                                  context: context, text: "Fixed", adjust: adjust, 
                                  path: RouterPath.fixed,icon: Icons.attach_money_rounded
                                  ),
                              dashComponent.iconCurve(
                                  context: context,
                                  text: "Loan",path: RouterPath.loan,adjust: adjust,
                                  icon: Icons.local_atm_rounded
                                  ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  

                   
                          Expanded(
                            child: SingleChildScrollView(
                              child: Wrap(
                                verticalDirection: VerticalDirection.down,
                                //direction: Axis.vertical,
                                children: [
                                  Container(
                                    //height: 300,
                                    padding: EdgeInsets.only(bottom: 30),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColorLight,
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30)),
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(20.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children:  [
                                                  Text(
                                                    "Recent Transactions",
                                                    style: TextStyle(fontSize: 20, color: Theme.of(context).iconTheme.color),
                                                  ),
                                                  const InkWell(
                                                    child: Text(
                                                      "View History",
                                                      style: TextStyle(
                                                          color: Colors.redAccent,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                height: 30,
                                                color: Theme.of(context).hintColor,
                                                thickness: 3,
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              dashComponent.transactionList(
                                                  context: context, adjust: adjust),
                                              dashComponent.transactionList(
                                                  context: context,
                                                  adjust: adjust,
                                                  name: 'Debit Payment',
                                                  isDebit: true,
                                                  color1: Colors.red,
                                                  color2: Colors.green,
                                                  amount: '2,489.98',
                                                  desc: 'TRF FRM ALEX CHUKWUMA TO FENCHI HUB '
                                                  ),
                                              dashComponent.transactionList(
                                                  context: context, adjust: adjust),
                                              dashComponent.transactionList(
                                                  context: context,
                                                  adjust: adjust,
                                                  name: 'Debit Payment',
                                                  isDebit: true,
                                                  color1: Colors.red,
                                                  color2: Colors.green,
                                                  amount: '78,689.98',
                                                  desc: 'TRF FRM ALEX CHUKWUMA TO FENCHI HUB'
                                                  ),
                                              dashComponent.transactionList(
                                                  context: context, adjust: adjust),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        
                        
                    
                    
                    
                  ],
                )
              ]),
            ),
          ],
        ));
  }
}
