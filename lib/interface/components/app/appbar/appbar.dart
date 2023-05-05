import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:step1/themes/theme_changer.dart';

class AppBarSet {

  appBar(title, BuildContext context,{bool goBack =false, String? route}){
  bool currTheme = context.watch<ThemeChanger>().isDarkTheme;
 // bool currTheme = false;
  return AppBar(
          leading: Builder(
            
            builder: (BuildContext context) {
              // return IconButton(
              //   icon: const Icon(Icons.menu),
              //   onPressed: () {
              //     Scaffold.of(context).openDrawer();
              //   },
              //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              // );
              return InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                //Scaffold.of(context).openDrawer();
                if(goBack){
                  Navigator.pop(context);
                }else{
                Scaffold.of(context).openDrawer();
                }
                
                
              },
              child: Image.asset("assets/images/icons/tabBar.png"),
              );
            },
          ),
          


          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                InkWell(child: FaIcon(FontAwesomeIcons.bell)),
                SizedBox(width: 20,),
                InkWell(
                  child:FaIcon(currTheme? FontAwesomeIcons.lightbulb:FontAwesomeIcons.solidLightbulb ),
                 //FaIcon(FontAwesomeIcons.lightbulb)
                  onTap: () {
                   // bool currTheme = context.watch<ThemeChanger>().isDarkTheme;
                    context.read<ThemeChanger>().changeTheme(currTheme);
                  },
                  ),
                
              ],),
            )
          ],
          title: Text("$title"),
        );
}
  
}

final AppBarSet appBar = AppBarSet();