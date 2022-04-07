import 'package:flutter/material.dart';
import 'package:rm86065_checkpoint/src/utils/padding_sizes.dart';

class StandardPage extends StatelessWidget {
  final Widget body;
  final String pageTitle;

  StandardPage({required this.body, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            pageTitle,
          )),
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
