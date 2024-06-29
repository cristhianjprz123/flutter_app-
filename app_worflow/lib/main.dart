import 'package:flutter/material.dart';
import 'package:workflow/routes.dart';
import 'package:workflow/screens/splash/splash_screen.dart';
import 'package:workflow/theme.dart';



void main () {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

 const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'Scan QR Code',
      theme:AppTheme.lightTheme(context),
       initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
 
