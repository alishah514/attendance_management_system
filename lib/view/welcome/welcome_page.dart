import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/custom_widget/my_theme.dart';
import 'package:flutter_application_2/view/login/login_page.dart';
import 'package:flutter_application_2/view/welcome_page/components/background.dart';
import 'package:flutter_application_2/view/welcome_page/components/customButton.dart';

//https://github.com/alishah514/flutter_bukhari.git

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome by bukhari",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/undraw_Balloons.png",
                width: 300,
              ),
              // ignore: sized_box_for_whitespace
              customButton(
                buttonColor: MyTheme.loginButtonColor,
                buttonText: "LOGIN",
                textColor: Colors.white,
                handleButtonClick: () {
                  loginButtonClickHandler(context);
                },
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              customButton(
                buttonColor: MyTheme.signupButtonColor,
                buttonText: "SIGNUP",
                textColor: Colors.black,
                handleButtonClick: signupButtonClickHandler,
              )
            ],
          ),
        ),
      ),
    );
  }

  loginButtonClickHandler(BuildContext context) {
    print("Login Clicked");

    Navigator.push(
        context, MaterialPageRoute(builder: (Builder) => LoginPage()));
  }

  signupButtonClickHandler() {
    print("Signup Clicked");
  }
}
