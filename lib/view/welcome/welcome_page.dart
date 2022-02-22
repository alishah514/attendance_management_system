import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/custom_widget/my_theme.dart';
import 'package:flutter_application_2/view/login/student_login_page.dart';
import 'package:flutter_application_2/view/signup/signup.dart';
import 'package:flutter_application_2/view/welcome/student_welcome_page.dart';
import 'package:flutter_application_2/view/welcome_page/components/background.dart';
import 'package:flutter_application_2/view/welcome_page/components/customButton.dart';

import '../login/teacher_login_page.dart';

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
                "ATTENDANCE MANAGEMENT SYSTEM",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                "By Bukhari",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "images/school.png",
                width: 300,
              ),
              SizedBox(
                height: 30,
              ),
              customButton(
                buttonColor: MyTheme.loginButtonColor,
                buttonText: "STUDENT",
                textColor: Colors.white,
                handleButtonClick: () {
                  studentButtonClickHandler(context);
                },
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              customButton(
                buttonColor: MyTheme.signupButtonColor,
                buttonText: "TEACHER",
                textColor: Colors.black,
                handleButtonClick: () {
                  teacherButtonClickHandler(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  studentButtonClickHandler(BuildContext context) {
    print("Student Button Clicked");

    Navigator.push(
        context, MaterialPageRoute(builder: (Builder) => StudentWelcomePage()));
  }

  teacherButtonClickHandler(BuildContext context) {
    print("Signup Clicked");

    Navigator.push(
        context, MaterialPageRoute(builder: (Builder) => TeacherLoginPage()));
  }
}
