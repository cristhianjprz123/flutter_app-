import 'package:flutter/material.dart';
import 'package:workflow/screens/home/home_screen.dart';
import 'package:workflow/screens/splash/splash_screen.dart';
import 'package:workflow/screens/init_screen.dart';

// We use name route
// All our routes will be available here

final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
};
