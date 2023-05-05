import 'package:flutter/material.dart';
import 'package:step1/models/locals.dart';
import 'package:step1/themes/colors.dart';

class DashComponent {
  Widget balanceCard(BuildContext context) {
    double width, height;
    Orientation orientation = MediaQuery.of(context).orientation;

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      width = MediaQuery.of(context).size.width; // width = 25% of the screen
      height = MediaQuery.of(context).size.height *
          0.25; //height = 25% of the screen
    } else {
      width = MediaQuery.of(context).size.width; // width = 10% of the screen
      height = MediaQuery.of(context).size.height *
          0.10; //height = 10% of the screen
    }
    return Container(
      // height: MediaQuery.of(context).size.height,
      width: double.infinity,
      // margin: EdgeInsets.symmetric(vertical: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 250.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(parent: ScrollPhysics()), // const PageScrollPhysics(), //const ClampingScrollPhysics(), NeverScrollableScrollPhysics() 

        clipBehavior: Clip.hardEdge,
        addSemanticIndexes: true,
        children: <Widget>[
          InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 4, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
              width: width * 0.99,
              decoration: BoxDecoration(
                color: Color.fromRGBO(38, 81, 158, 1),
                border: Border.all(
                    color: Colors.white, width: 0, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.amber,
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
                          Icon(
                            Icons.table_chart,
                            color: Colors.white,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'SAVINGS | BALANCE',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "worksans",
                                fontSize: 14),
                          ),
                        ],
                      ),
                      //Icon(Icons.info_outline, size: 18)
                      Row(
                        children: [
                          Text(
                            "Add Account ",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Icon(
                            Icons.add_circle,
                            size: 25,
                            color: Colors.white,
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
                          orientation.index == Orientation.landscape.index
                              ? Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: width * 0.30,
                                    ),
                                    Text(
                                      '\€',
                                      style: TextStyle(
                                        fontFamily: "vistolsans",
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      children: [
                                        Text(
                                          '572,927,900.00 ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "sfprotext",
                                            fontSize: 45,
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
                                              'EUR',
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
                                )
                              : Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      'Kč',
                                      style: TextStyle(
                                        fontFamily: "vistolsans",
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      children: [
                                        Text(
                                          '227,543,380.89 ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "sfprotext",
                                            fontSize: 35,
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
                                              'CZK',
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
                        height: 25,
                        width: width * 0.48,
                        child: TextButton(
                          //color: PaypalColors.LightGrey,
                          //textColor: Colors.amber,
                          child: Text(
                            "MARCUS JAMES K",
                            style: TextStyle(
                                fontFamily: "worksans",
                                color: Colors.amber,
                                fontSize: 12),
                          ),
                          onPressed: () {},
                          //shape: RoundedRectangleBorder(//borderRadius: BorderRadius.circular(30.0),),
                        ),
                      ),

                      // Spacer(),
                      SizedBox(
                        height: 25,
                        width: width * 0.45,
                        child: TextButton(
                          //color: PaypalColors.LightGrey,
                          //textColor: Colors.amber,
                          child: Text(
                            "ACCT-77098096677",
                            style: TextStyle(
                                fontFamily: "worksans",
                                color: Colors.amber,
                                fontSize: 12),
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
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 4, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
              width: width * 0.95,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: Colors.white, width: 0, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.amber,
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
                          Icon(
                            Icons.table_chart,
                            color: Colors.amber,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'SAVINGS | BALANCE',
                            style: TextStyle(
                                color: Colors.amber,
                                fontFamily: "worksans",
                                fontSize: 14),
                          ),
                        ],
                      ),
                      //Icon(Icons.info_outline, size: 18)
                      InkWell(
                        child: Row(
                          children: [
                            Text(
                              "Add Account ",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.amber),
                            ),
                            Icon(
                              Icons.add_circle,
                              size: 25,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                        onTap: () async {
                          // _newAccountButton();
                        },
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
                          orientation.index == Orientation.landscape.index
                              ? Center(
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: width * 0.3,
                                      ),
                                      Text(
                                        '\€',
                                        style: TextStyle(
                                          fontFamily: "vistolsans",
                                          fontSize: 25,
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Column(
                                        children: [
                                          Text(
                                            '572,927.00 ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: "sfprotext",
                                              fontSize: 45,
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
                                                  color: Colors.amber,
                                                  fontSize: 17,
                                                ),
                                              ),
                                              //SizedBox(width: 10),

                                              SizedBox(width: 10),
                                              Text(
                                                'EUR',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontFamily: "worksans",
                                                  color: Colors.amber,
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
                                )
                              : Row(
                                  children: <Widget>[
                                    SizedBox(width: 40),
                                    Text(
                                      '\$',
                                      style: TextStyle(
                                        fontFamily: "vistolsans",
                                        fontSize: 25,
                                      ),
                                    ),

                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Text(
                                          '572,927.00 ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "sfprotext",
                                            fontSize: 45,
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
                                                color: Colors.amber,
                                                fontSize: 17,
                                              ),
                                            ),
                                            //SizedBox(width: 10),

                                            SizedBox(width: 10),
                                            Text(
                                              'USD',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontFamily: "worksans",
                                                color: Colors.amber,
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
                        height: 25,
                        width: width * 0.48,
                        child: TextButton(
                          // color: Color.fromRGBO(38, 81, 158, 1),
                          //textColor: Colors.amber,
                          child: Text(
                            "ALEX CHUKWUMA OGUAGU",
                            style: TextStyle(
                                fontFamily: "worksans",
                                color: Colors.white,
                                fontSize: 12),
                          ),
                          onPressed: () {},
                          // shape: RoundedRectangleBorder(
                          //borderRadius: BorderRadius.circular(30.0),),
                        ),
                      ),

                      // Spacer(),
                      SizedBox(
                        height: 25,
                        width: width * 0.45,
                        child: TextButton(
                          //color: Color.fromRGBO(38, 81, 158, 1),
                          //textColor: Colors.white,
                          child: Text(
                            "ACCTNO-77098096677",
                            style: TextStyle(
                                fontFamily: "worksans",
                                color: Colors.white,
                                fontSize: 12),
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
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 4, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
              width: orientation.index == Orientation.landscape.index
                  ? width * 1
                  : width * 0.98,
              decoration: BoxDecoration(
                //color: ThemeCall().colorsgrey,
                border: Border.all(
                    color: Colors.white, width: 0, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.amber,
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
                        children: const <Widget>[
                          SizedBox(
                            width: 12,
                          ),
                          //Image.assetxx('assets/images/Paypal-logo.png', height: 30, color: Colors.white,),
                          Padding(
                            padding: EdgeInsets.only(left:10, top: 5),
                            child: Icon(
                              Icons.table_chart,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 20),
                          Padding(
                            padding: EdgeInsets.only(left:10, top: 5),
                            child: Text(
                              'LOAN | BALANCE',
                              style: TextStyle(
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
                            padding: EdgeInsets.only(right: 20, top: 5),
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
                          orientation.index == Orientation.landscape.index
                              ? Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: width * 0.30,
                                    ),
                                    Text(
                                      '\€',
                                      style: TextStyle(
                                        fontFamily: "vistolsans",
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      children: [
                                        Text(
                                          '572,927,900.00 ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "sfprotext",
                                            fontSize: 45,
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
                                              'EUR',
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
                                )
                              : Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      '\€',
                                      style: TextStyle(
                                        fontFamily: "vistolsans",
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    Column(
                                      children: [
                                        Text(
                                          '572,927.00 ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "sfprotext",
                                            fontSize: 45,
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
                                              'EUR',
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
                        height: 25,
                        width: width * 0.48,
                        child: TextButton(
                          //color: PaypalColors.LightGrey,
                          //textColor: Colors.amber,
                          child: const Text(
                            "ALEX CHUKWUMA OGUAGU",
                            style: TextStyle(
                                fontFamily: "worksans",
                                color: Colors.amber,
                                fontSize: 12),
                          ),
                          onPressed: () {
                            
                          },
                          //shape: RoundedRectangleBorder(
                              //borderRadius: BorderRadius.circular(30.0),),
                        ),
                      ),

                      // Spacer(),
                      SizedBox(
                        height: 25,
                        width: width * 0.45,
                        child: TextButton(
                          //color: PaypalColors.LightGrey,
                         // textColor: Colors.amber,
                          child: const Text(
                            "ACCT-77098096677",
                            style: TextStyle(
                                fontFamily: "worksans",
                                color: Colors.amber,
                                fontSize: 12),
                          ),
                          onPressed: () {
                            
                          },
                          //shape: RoundedRectangleBorder(
                              //borderRadius: BorderRadius.circular(30.0),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 1,
          ),
        ],
      ),
    );
  }
}

DashComponent dashComponent = DashComponent();
