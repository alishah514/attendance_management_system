import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/custom_widget/my_theme.dart';
import 'package:flutter_application_2/view/login/login_page.dart';
import 'package:flutter_application_2/view/signup/components/gender_selection.dart';
import 'package:flutter_application_2/view/signup/components/signup_background.dart';
import 'package:flutter_application_2/view/signup/components/signup_textfield_decorator.dart';
import 'package:flutter_application_2/view/signup/components/signup_userid_textfield.dart';
import 'package:flutter_application_2/view/welcome_page/components/customButton.dart';
import 'components/signup_profilepic.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

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
              const SignUpProfilePicture(),
              const SizedBox(
                height: 20,
              ),
              SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                  useridController: nameController,
                  userIdErrorText: "Name cannot be empty",
                  userIdHintText: "Enter Name",
                  userIdHintTextColor: Colors.black,
                  userIdTextFieldPrefixIcon: Icons.person,
                  userIdTextFieldPrefixIconColor: Colors.purple,
                  onUserIdValueChange: (value) {},
                ),
              ),
              SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                  useridController: emailController,
                  userIdErrorText: "Email cannot be empty",
                  userIdHintText: "Enter Email ID",
                  userIdHintTextColor: Colors.black,
                  userIdTextFieldPrefixIcon: Icons.person,
                  userIdTextFieldPrefixIconColor: Colors.purple,
                  onUserIdValueChange: (value) {},
                ),
              ),
              SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                  useridController: mobileController,
                  userIdErrorText: "Mobile cannot be empty",
                  userIdHintText: "Enter Mobile",
                  userIdHintTextColor: Colors.black,
                  userIdTextFieldPrefixIcon: Icons.person,
                  userIdTextFieldPrefixIconColor: Colors.purple,
                  onUserIdValueChange: (value) {},
                ),
              ),
              SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                  useridController: passController,
                  userIdErrorText: "Password is wrong",
                  userIdHintText: "Enter Password",
                  userIdHintTextColor: Colors.black,
                  userIdTextFieldPrefixIcon: Icons.person,
                  userIdTextFieldPrefixIconColor: Colors.purple,
                  onUserIdValueChange: (value) {},
                ),
              ),
              SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                  useridController: confirmpassController,
                  userIdErrorText: "Doesn't match with the password",
                  userIdHintText: "Confirm Password",
                  userIdHintTextColor: Colors.black,
                  userIdTextFieldPrefixIcon: Icons.person,
                  userIdTextFieldPrefixIconColor: Colors.purple,
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
                buttonColor: MyTheme.loginButtonColor,
                buttonText: "Sign Up",
                textColor: Colors.white,
                handleButtonClick: () {},
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
                        color: Colors.purple,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
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
