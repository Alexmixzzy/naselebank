import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:step1/models/locals.dart';
import 'package:step1/themes/responsive.dart';


class TransferComponent {



  toTransInfo({required BuildContext context, required Responsive adjust,String? title, String? data, String? forward}) {
    var newdata = data ??
        'This transactiion area is for sending fund to another paypal user';
    final snackBar = SnackBar(
      
      content: Container(
        height: adjust.height * 0.50,
        

        child: Column(
          children: [
            Center(child: Text(title??'Section Info', style: TextStyle(color: Theme.of(context).iconTheme.color, fontSize: 22, fontWeight: FontWeight.w500),)),
            SizedBox(height: 20,),
            Center(child: Text(newdata, style: TextStyle(color: Theme.of(context).iconTheme.color, fontSize: 16, fontWeight: FontWeight.w300)),),
            SizedBox(
              height: 20,
            ),
            Container(
              width: adjust.width*0.50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColorDark,
                //color: Theme.of(context).cardColor,
              ),
              child: TextButton(
                
                onPressed: () {
                  if (forward == 'inter') {
                  } else if (forward == 'local') {
                  } else {
                    //Navigator.of(context).push(
                    //MaterialPageRoute(builder: (context) => Send1()), );
                  }
                },
                child: Text('Proceed', style: TextStyle(fontSize: 18),),
              ),
            ),

            SizedBox(height: 20,),
          
            Container(
              width: adjust.width*0.50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 81, 8, 3),
              ),
              child: TextButton(
                
                onPressed: () {
                ScaffoldMessenger.of(context).clearSnackBars();
                },
                child: Text('Close Info', style: TextStyle(fontSize: 18),),
              ),
            )
          

          ],
        ),
      ),
      
      
      backgroundColor: Theme.of(context).primaryColorLight,
      //backgroundColor: Theme.of(context).primaryColorDark,
    
      duration: Duration(seconds: 100, milliseconds: 500),
      shape: const RoundedRectangleBorder(
        //borderRadius: BorderRadius.circular(60)
        borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    
    //Scaffold.of(context).showBottomSheet((context) => snackBar);
  }

  Widget payType({required BuildContext context, required Responsive adjust, String? name, String? title, String? subTitle }) {
    return Container(
      width:adjust.width*0.99 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
       // color: Theme.of(context).backgroundColor, 
          color: Theme.of(context).cardColor,
        ),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: CircleAvatar(
                //backgroundColor: Colors.red,
                backgroundImage: AssetImage(LocalData.logo),
              ),
            ),
            title:
                Text(title??'Domestic Transfer', style: TextStyle(fontFamily: "worksans", color: Theme.of(context).iconTheme.color,)),
            subtitle:
                Text(subTitle??'Send to Paypal User', style: TextStyle(fontFamily: "worksans",color: Theme.of(context).primaryColor,)),
            onTap: () {
              String titl = title??'Domestic Transfer';
              String info_r =subTitle??
                  'Domestic transfer is a transaction between Paypal to paypal account';
              toTransInfo(context:context,adjust:adjust, title:titl, data:info_r, forward:name??'domestic');
            },

            trailing: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ),
        ],
      ),
    );
  }
}

TransferComponent tfComponent = TransferComponent();
