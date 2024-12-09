import 'package:facebook_feeds/feeds.dart';
import 'package:flutter/material.dart';
import 'login_elevated_button.dart';
import 'login_text_form_field.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static const String route = 'logScreen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset("assets/Images/App Rounded Logo.png",
                  width: 100, height: 100),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.18,
              child: Wrap(
                spacing: 20,
                direction: Axis.vertical,
                children: [
                  LoginTextFormField(
                      hintText: "Mobile Number or Email Address"),
                  LoginTextFormField(
                      hintText: "Password",
                      suffixIcon: const Icon(Icons.visibility_off))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.35,
              child: Wrap(
                children: [
                  LoginElevatedButton(
                    label: "Login",
                    labelColor: Colors.white,
                    bgColor: Colors.blue,
                    Pagecontext: context,
                    pageName: Feeds(),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgotten Password ?",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 15),
                height: MediaQuery.sizeOf(context).height * 0.155,
                child: Wrap(
                  children: [
                    LoginElevatedButton(
                      label: "Create Account",
                      labelColor: Colors.blue,
                      bgColor: Colors.white,
                      Pagecontext: context,
                      pageName: Feeds(),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.055,
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset("assets/Images/Meta Logo.png",
                            width: 100, height: 100),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
