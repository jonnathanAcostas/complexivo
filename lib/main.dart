import 'package:flutter/material.dart';
import 'package:futbol/src/pages/main/mainPage.dart';
import 'package:futbol/src/pages/register/registerPage.dart';
import 'package:futbol/src/pages/user/userPage.dart';
import 'package:responsive_framework/responsive_framework.dart'; 
Future main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1230, name: '2K'),
          ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
      title: 'LOGIN',
      debugShowCheckedModeBanner: false,
      initialRoute: 'main',
      routes: {
        'main':(BuildContext context) => MainPage(),
        'user':(BuildContext context) => UserPage(),
        //'register':(BuildContext context) => RegisterPage(),

      },
      theme: ThemeData(primaryColor: Colors.green),
    );
    
  }

}