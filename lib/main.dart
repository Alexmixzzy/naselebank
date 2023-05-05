import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:step1/controller/forms/login_controller.dart';
import 'package:step1/controller/forms/signup_controller.dart';
import 'package:step1/controller/lib/onboarding/controller.dart';
import 'package:step1/interface/onboard/page_view.dart';
import 'package:step1/interface/router/router.dart';
import 'package:step1/themes/theme_changer.dart';
import 'package:step1/themes/themedata.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>LoginController()),
        ChangeNotifierProvider(create: (_)=>PageViewController()),
        ChangeNotifierProvider(create: (_)=>SignupController()),
        ChangeNotifierProvider(create: (_)=>ThemeChanger()),
        
      ],
      child: const MyApp(),

    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      debugShowCheckedModeBanner:false,
      theme:  Themes.lightTheme,
      darkTheme: Themes.darkTheme, 
      
      //themeMode: theme.currentTheme,
      themeMode: context.watch<ThemeChanger>().currentTheme,
      //home: const OnBoarding(),
      routerConfig: router,
    );
  }
}

