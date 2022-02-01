import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  const customButton({
    Key? key,
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
    required this.handleButtonClick,
  }) : super(key: key);

  final Color buttonColor;
  final String buttonText;
  final Color textColor;
  final Function handleButtonClick;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 400,
      child: ClipRRect(
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            ),
            backgroundColor: MaterialStateProperty.all(buttonColor),
          ),
          onPressed: () {
            handleButtonClick();
          },
          child: Text(
            buttonText,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: textColor),
          ),
        ),
      ),
    );
  }
}
