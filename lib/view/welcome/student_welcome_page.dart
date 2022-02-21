import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/custom_widget/my_theme.dart';
import 'package:flutter_application_2/view/login/student_login_page.dart';
import 'package:flutter_application_2/view/signup/signup.dart';
import 'package:flutter_application_2/view/welcome_page/components/background.dart';
import 'package:flutter_application_2/view/welcome_page/components/customButton.dart';

//https://github.com/alishah514/flutter_bukhari.git

class StudentWelcomePage extends StatelessWidget {
  const StudentWelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "WELCOME STUDENTS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "images/student.png",
                width: 300,
              ),
              SizedBox(
                height: 30,
              ),
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
                handleButtonClick: () {
                  signupButtonClickHandler(context);
                },
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
        context, MaterialPageRoute(builder: (Builder) => StudentLoginPage()));
  }

  signupButtonClickHandler(BuildContext context) {
    print("Signup Clicked");

    Navigator.push(context, MaterialPageRoute(builder: (Builder) => SignUp()));
  }
}
