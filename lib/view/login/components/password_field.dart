import 'package:flutter/material.dart';

class UserPassTextField extends StatefulWidget {
  UserPassTextField({
    Key? key,
    required this.userPassController,
    required this.userPassErrorText,
    required this.userPassHintText,
    required this.userPassHintTextColor,
    required this.userPassTextFieldPrefixIcon,
    required this.userPassTextFieldPrefixIconColor,
    required this.onUserPassValueChange,
    required this.suffixIcon,
    required this.suffixIconColor,
  }) : super(key: key);

  final TextEditingController userPassController;
  final String userPassErrorText;
  final String userPassHintText;
  final Color userPassHintTextColor;
  final IconData userPassTextFieldPrefixIcon;
  final Color userPassTextFieldPrefixIconColor;
  final Function onUserPassValueChange;
  final IconData suffixIcon;
  final Color suffixIconColor;

  @override
  State<UserPassTextField> createState() => _UserPassTextFieldState();
}

class _UserPassTextFieldState extends State<UserPassTextField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.userPassController,
      validator: (value) {
        if (value!.isEmpty) {
          return widget.userPassErrorText;
        } else {
          return null;
        }
      },
      onChanged: (value) {
        widget.onUserPassValueChange(value);
      },
      cursorColor: Colors.black,
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      obscureText: isPasswordVisible ? false : true,
      decoration: InputDecoration(
        hintText: widget.userPassHintText,
        hintStyle: TextStyle(
          color: widget.userPassHintTextColor,
        ),
        border: InputBorder.none,
        prefixIcon: Icon(
          widget.userPassTextFieldPrefixIcon,
          color: widget.userPassTextFieldPrefixIconColor,
        ),
        suffixIcon: IconButton(
          icon: isPasswordVisible
              ? Icon(Icons.visibility)
              : Icon(Icons.visibility_off),
          color: widget.suffixIconColor,
          onPressed: () {
            print("hello");
            //setstate and stateful widget in this page is used for toggle button in password
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
        ),
      ),
    );
  }
}
