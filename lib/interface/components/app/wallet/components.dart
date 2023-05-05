import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step1/themes/responsive.dart';

class WalletComponents {
  Widget cards(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
            //color: Theme.of(context).primaryColor,
            gradient: LinearGradient(
              // begin: Alignment.topRight,
              // end: Alignment.bottomLeft,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                //Colors.blue,
                Colors.red,
                Theme.of(context).primaryColor,
                Theme.of(context).backgroundColor,

              ],
              stops: [
                0.1,
                0.4,
                0.6,
                //0.9,
              ]
            ),
            borderRadius: BorderRadius.circular(30),
            backgroundBlendMode: BlendMode.hardLight,
            ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Total Balance",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "\$ 783,839.00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "**** **** **** 8907",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Switch(
                    value: false,
                    onChanged: (newValue) {},
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    activeColor: Colors.lightBlueAccent,
                    inactiveTrackColor: Colors.black12,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget expense(
      BuildContext context, String text, String amount, Responsive adjust, Color color) {
    return Container(
      height: 90,
      width: adjust.width * 0.43,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  children: [
                    Text(
                      "$amount",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(width: 10,),

                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    FontAwesomeIcons.chartLine,
                    size: 40,
                    color: color,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget iconCurve (
      BuildContext context, String text, Responsive adjust) {
    return Column(
      children: [
        Container(
          height:65,
          width: adjust.width * 0.20,
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(15)),
          child:  Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.chartLine,
                      size: 20,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                )),

            Container(child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(text, style: TextStyle(color: Theme.of(context).iconTheme.color, fontSize: 18),),
              ),),
      ],
    );
  }


  Widget addCard(BuildContext context, Responsive adjust){

        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            height: 50,
                            
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: InkWell(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.card_giftcard_rounded, size: 35,),
                                      SizedBox(width: 20,), 

                                      Text("Add a new card", style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),)
                                      
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                        

  }


  Widget friends(bool isImage, BuildContext context, {Icon? icon, String? image}) {
    return isImage?
    Container(
      margin: EdgeInsets.all(5),
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage("assets/images/illustrations/blooming.png"), fit: BoxFit.fill),
      ),
      //child: Image.asset('assets/images/illustrations/blooming.png'),
    ):Container(
      margin: EdgeInsets.all(5),
      width: 60,
      height: 60,
      
      decoration:  BoxDecoration(
       // borderRadius: BorderRadius.all(Radius.circular(10)),

        shape: BoxShape.circle,
        color: Theme.of(context).primaryColor,
       // border: BoxBorder.lerp(BoxBorder.),
        
      ),
      child: Center(child: FaIcon(FontAwesomeIcons.plus)),
    );
  }




}

WalletComponents walletComponents = WalletComponents();
