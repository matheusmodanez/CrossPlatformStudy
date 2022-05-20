import 'package:flutter/material.dart';
import 'package:matheusnathan_sit/ui_text.dart';

class StandardButton extends StatelessWidget {
  final Function()? onPressed;

  StandardButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Align(
        alignment: Alignment.bottomRight,
        child: ElevatedButton(
          onPressed: onPressed,
          child: const Align(
            alignment: Alignment.center,
            child: Text(buttonAdd),
          ),
        ),
      ),
    );
  }
}
