import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/welcome_page/components/background.dart';
import 'package:flutter_application_2/view/welcome_page/components/customButton.dart';

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "SELECT YOUR CHOICE",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),

              customButton(
                buttonColor: Colors.orange,
                buttonText: "MARK ATTENDANCE",
                textColor: Colors.black,
                handleButtonClick: () {
                  markAttedanceButtonClickHandler(context);
                },
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              customButton(
                buttonColor: Colors.orange,
                buttonText: "MARK LEAVE",
                textColor: Colors.black,
                handleButtonClick: () {
                  markLeaveButtonClickHandler(context);
                },
              ),

              SizedBox(
                height: 20,
              ),
              customButton(
                buttonColor: Colors.orange,
                buttonText: "VIEW ATTENDANCE",
                textColor: Colors.black,
                handleButtonClick: () {
                  vireAttendanceButtonClickHandler(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void markAttedanceButtonClickHandler(BuildContext context) {}

  void markLeaveButtonClickHandler(BuildContext context) {}

  void vireAttendanceButtonClickHandler(BuildContext context) {}
}
