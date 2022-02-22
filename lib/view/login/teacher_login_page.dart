import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/login/components/login_background.dart';
import 'package:flutter_application_2/view/login/components/password_field.dart';
import 'package:flutter_application_2/view/signup/signup.dart';
import 'package:flutter_application_2/view/welcome/welcome_page.dart';
import 'package:flutter_application_2/view/welcome_page/components/customButton.dart';

import 'components/textfield_decorator.dart';
import 'components/userId_text_field.dart';

class TeacherLoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController useridController = TextEditingController();
  TextEditingController userPassController = TextEditingController();
  String userIdErrorText = "teacher id can not be empty";
  String userIdHintText = "Enter Teacher ID";
  Color userIdHintTextColor = Color.fromARGB(255, 0, 110, 4);
  IconData userIdTextFieldPrefixIcon = Icons.person;
  Color userIdTextFieldPrefixIconColor = Color.fromARGB(255, 0, 110, 4);

  TeacherLoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME TEACHERS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Image.asset("images/teacher.png"),
              const Text(
                "Please Login to Continue",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldDecorator(
                      child: UserIdTextField(
                        useridController: useridController,
                        userIdErrorText: userIdErrorText,
                        userIdHintText: userIdHintText,
                        userIdHintTextColor: userIdHintTextColor,
                        userIdTextFieldPrefixIcon: userIdTextFieldPrefixIcon,
                        userIdTextFieldPrefixIconColor:
                            userIdTextFieldPrefixIconColor,
                        onUserIdValueChange: (value) {
                          print(value);
                        },
                      ),
                    ),
                    TextFieldDecorator(
                      child: UserPassTextField(
                        userPassController: userPassController,
                        userPassErrorText: "password can't be empty",
                        userPassHintText: "Enter Password",
                        userPassHintTextColor: Color.fromARGB(255, 0, 110, 4),
                        suffixIcon: Icons.visibility_off,
                        suffixIconColor: Color.fromARGB(255, 0, 110, 4),
                        userPassTextFieldPrefixIcon: Icons.lock,
                        userPassTextFieldPrefixIconColor:
                            Color.fromARGB(255, 0, 110, 4),
                        onUserPassValueChange: (value) {
                          print("pass value $value");
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customButton(
                      buttonColor: Color.fromARGB(255, 0, 110, 4),
                      buttonText: "Login",
                      textColor: Colors.white,
                      handleButtonClick: () {
                        print("hello");
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Changed Your Mind?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 5),
                        InkWell(
                          child: const Text(
                            "Go Back",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 110, 4),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomePage(),
                              ),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
