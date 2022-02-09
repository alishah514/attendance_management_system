import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/custom_widget/my_theme.dart';

class UserIdTextField extends StatelessWidget {
  const UserIdTextField({
    Key? key,
    required this.useridController,
    required this.userIdErrorText,
    required this.userIdHintText,
    required this.userIdHintTextColor,
    required this.userIdTextFieldPrefixIcon,
    required this.userIdTextFieldPrefixIconColor,
    required this.onUserIdValueChange,
  }) : super(key: key);

  final TextEditingController useridController;
  final String userIdErrorText;
  final String userIdHintText;
  final Color userIdHintTextColor;
  final IconData userIdTextFieldPrefixIcon;
  final Color userIdTextFieldPrefixIconColor;
  final Function onUserIdValueChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: useridController,
      validator: (value) {
        if (value!.isEmpty) {
          return userIdErrorText;
        } else {
          return null;
        }
      },
      onChanged: (value) {
        onUserIdValueChange(value);
      },
      cursorColor: Colors.black,
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      decoration: InputDecoration(
        hintText: userIdHintText,
        hintStyle: TextStyle(
          color: userIdHintTextColor,
        ),
        border: InputBorder.none,
        prefixIcon: Icon(
          userIdTextFieldPrefixIcon,
          color: userIdTextFieldPrefixIconColor,
        ),
      ),
    );
  }
}
