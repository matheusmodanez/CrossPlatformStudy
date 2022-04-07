import 'dart:io';

import 'package:app_sis/src/utils/padding_sizes.dart';
import 'package:flutter/material.dart';

class StandardPage extends StatelessWidget {
  final Widget body;
  final String pageTitle;

  StandardPage({required this.body, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: PaddingSizes.introPageBoder,
          right: PaddingSizes.introPageBoder,
          top: PaddingSizes.introPageTop,
        ),
        child: SingleChildScrollView(child: body),
      ),
    );
  }
}
