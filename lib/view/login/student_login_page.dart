import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/custom_widget/my_theme.dart';
import 'package:flutter_application_2/view/login/components/login_background.dart';
import 'package:flutter_application_2/view/login/components/password_field.dart';
import 'package:flutter_application_2/view/signup/signup.dart';
import 'package:flutter_application_2/view/student_home_page.dart';
import 'package:flutter_application_2/view/welcome_page/components/customButton.dart';

import 'components/textfield_decorator.dart';
import 'components/userId_text_field.dart';

class StudentLoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController useridController = TextEditingController();
  TextEditingController userPassController = TextEditingController();
  String userIdErrorText = "user id can not be empty";
  String userIdHintText = "Enter User";
  Color userIdHintTextColor = Colors.purple;
  IconData userIdTextFieldPrefixIcon = Icons.person;
  Color userIdTextFieldPrefixIconColor = Colors.purple;

  StudentLoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/student2.png"),
              SizedBox(
                height: 30,
              ),
              const Text(
                "Login",
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
                        userPassHintTextColor: Colors.purple,
                        suffixIcon: Icons.visibility_off,
                        suffixIconColor: Colors.purple,
                        userPassTextFieldPrefixIcon: Icons.lock,
                        userPassTextFieldPrefixIconColor: Colors.purple,
                        onUserPassValueChange: (value) {
                          print("pass value $value");
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    customButton(
                      buttonColor: MyTheme.loginButtonColor,
                      buttonText: "Login",
                      textColor: Colors.white,
                      handleButtonClick: () {
                        studentLoginButtonClickHandler(context);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have account?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 5),
                        InkWell(
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
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

  studentLoginButtonClickHandler(BuildContext context) {
    print("Signup Clicked");

    Navigator.push(
        context, MaterialPageRoute(builder: (Builder) => StudentHomePage()));
  }
}
