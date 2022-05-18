import 'package:flutter/material.dart';

class StandardButton extends StatelessWidget {
  final Function()? onPressed;
  
  StandardButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Align(
            alignment: Alignment.center,
            child: const Text("+"),
          ),
        ));
  }
}
