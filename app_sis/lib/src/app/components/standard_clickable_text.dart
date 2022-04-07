import 'package:flutter/material.dart';

class StandardClickableText extends StatelessWidget {
  final String label;
  final Function()? OnTap;

  StandardClickableText({required this.label, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.pink,
          decoration: TextDecoration.underline
        ),
      ),
    );
  }
}
