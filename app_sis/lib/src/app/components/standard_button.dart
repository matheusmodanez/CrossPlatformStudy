import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  final String buttonText;
  final Function()? onPressed;
  final bool isCenter;

  StandardButton(
      {required this.buttonText,
      required this.onPressed,
      required this.isCenter});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Align(
            alignment: isCenter ? Alignment.center : Alignment.centerLeft,
            child: Text(buttonText),
          )),
    );
  }
}
