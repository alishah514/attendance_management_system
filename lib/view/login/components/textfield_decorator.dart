import 'package:flutter/material.dart';
import 'package:flutter_application_2/view/custom_widget/my_theme.dart';

class TextFieldDecorator extends StatelessWidget {
  final Widget child;

  const TextFieldDecorator({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 20,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: MyTheme.loginPageBoxColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
