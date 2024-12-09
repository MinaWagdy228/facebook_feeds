import 'dart:async';
import 'package:facebook_feeds/splash_screen.dart';
import 'package:flutter/material.dart';
import 'log_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        LogInScreen.route: (context) => const LogInScreen(),
        "/": (context) => SplashScreen()
      },
    );
  }
}
