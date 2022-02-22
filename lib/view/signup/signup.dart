import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/signup_controller.dart';
import 'package:flutter_application_2/view/custom_widget/my_theme.dart';
import 'package:flutter_application_2/view/login/student_login_page.dart';
import 'package:flutter_application_2/view/signup/components/gender_selection.dart';
import 'package:flutter_application_2/view/signup/components/signup_background.dart';
import 'package:flutter_application_2/view/signup/components/signup_textfield_decorator.dart';
import 'package:flutter_application_2/view/signup/components/signup_userid_textfield.dart';
import 'package:flutter_application_2/view/welcome_page/components/customButton.dart';
import 'package:get/get.dart';
import 'components/signup_profilepic.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController rollnoController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupBackground(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SignUpProfilePicture(),
              const SizedBox(
                height: 20,
              ),
              SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                  useridController: nameController,
                  userIdErrorText: "Name cannot be empty",
                  userIdHintText: "Enter Name",
                  userIdHintTextColor: Color.fromARGB(255, 9, 70, 121),
                  userIdTextFieldPrefixIcon: Icons.person,
                  userIdTextFieldPrefixIconColor:
                      Color.fromARGB(255, 9, 70, 121),
                  onUserIdValueChange: (value) {},
                ),
              ),
              SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                  useridController: rollnoController,
                  userIdErrorText: "Roll No cannot be empty",
                  userIdHintText: "Enter Roll No",
                  userIdHintTextColor: Color.fromARGB(255, 9, 70, 121),
                  userIdTextFieldPrefixIcon: Icons.numbers_rounded,
                  userIdTextFieldPrefixIconColor:
                      Color.fromARGB(255, 9, 70, 121),
                  onUserIdValueChange: (value) {},
                ),
              ),
              SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                  useridController: mobileController,
                  userIdErrorText: "Mobile cannot be empty",
                  userIdHintText: "Enter Mobile",
                  userIdHintTextColor: Color.fromARGB(255, 9, 70, 121),
                  userIdTextFieldPrefixIcon: Icons.mobile_friendly,
                  userIdTextFieldPrefixIconColor:
                      Color.fromARGB(255, 9, 70, 121),
                  onUserIdValueChange: (value) {},
                ),
              ),
              SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                  useridController: passController,
                  userIdErrorText: "Password is wrong",
                  userIdHintText: "Enter Password",
                  userIdHintTextColor: Color.fromARGB(255, 9, 70, 121),
                  userIdTextFieldPrefixIcon: Icons.lock,
                  userIdTextFieldPrefixIconColor:
                      Color.fromARGB(255, 9, 70, 121),
                  onUserIdValueChange: (value) {},
                ),
              ),
              SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                  useridController: confirmpassController,
                  userIdErrorText: "Doesn't match with the password",
                  userIdHintText: "Confirm Password",
                  userIdHintTextColor: Color.fromARGB(255, 9, 70, 121),
                  userIdTextFieldPrefixIcon: Icons.lock,
                  userIdTextFieldPrefixIconColor:
                      Color.fromARGB(255, 9, 70, 121),
                  onUserIdValueChange: (value) {},
                ),
              ),
              SignupTextFieldDecorator(
                child: GenderSelection(),
              ),
              const SizedBox(
                height: 10,
              ),
              customButton(
                buttonColor: Color.fromARGB(255, 9, 70, 121),
                buttonText: "Sign Up",
                textColor: Colors.white,
                handleButtonClick: () {
                  signupButtonClickHandler(context);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have Account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: const Text(
                      "Login Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 9, 70, 121),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentLoginPage()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

signupButtonClickHandler(BuildContext context) {
  print("SignUp Clicked");

  Navigator.push(
      context, MaterialPageRoute(builder: (Builder) => StudentLoginPage()));
}
