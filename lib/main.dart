import 'package:flutter/material.dart';
import 'package:RG/Screens/AppOverview.dart';
import 'package:RG/Screens/CategoriesScreen.dart';
import 'package:RG/Screens/Welcome_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: WelcomeScreen(),
      initialRoute: WelcomeScreen.screenRoute,
      routes: {
        WelcomeScreen.screenRoute: (context) => WelcomeScreen(),
        AppOverview.screenRoute: (context) => AppOverview(),
        CategoriesScreen.screenRoute: (context) => CategoriesScreen(),
      },
    );
  }
}
