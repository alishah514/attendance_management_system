import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/login/components/login_background.dart';

import 'components/textfield_decorator.dart';
import 'components/userId_text_field.dart';

class LoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  TextEditingController useridController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String userIdErrorText = "user id can not be empty";
  String userIdHintText = "Enter User";
  Color userIdHintTextColor = Colors.purple;
  IconData userIdTextFieldPrefixIcon = Icons.person;
  Color userIdTextFieldPrefixIconColor = Colors.purple;

  LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/Login.png"),
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
