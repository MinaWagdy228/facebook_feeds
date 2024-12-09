import 'package:facebook_feeds/log_in_screen.dart';
import 'package:facebook_feeds/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((val) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LogInScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 9,
                child: Image.asset(
                  "assets/Images/App Rounded Logo.png",
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.sizeOf(context).width,
                      alignment: Alignment.center,
                      child: Text("From")),
                  Container(
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.sizeOf(context).height * 0.04),
                    height: MediaQuery.sizeOf(context).height * 0.05,
                    child: Image.asset("assets/Images/Meta Logo.png",
                        width: 100, height: 100),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
