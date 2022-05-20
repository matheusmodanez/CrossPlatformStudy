import 'package:flutter/material.dart';
import 'package:matheusnathan_sit/ui_text.dart';

class StandardPage extends StatelessWidget {
  final Widget body;
  final String title;

  StandardPage({required this.body, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            top: 15,
          ),
          child: SingleChildScrollView(
            child: body,
          )),
    );
  }
}
