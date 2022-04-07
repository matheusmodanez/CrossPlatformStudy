import 'package:app_sis/src/app/components/standard_button.dart';
import 'package:app_sis/src/app/components/standard_textform.dart';
import 'package:app_sis/src/utils/ui_text.dart';
import 'package:flutter/material.dart';

import '../../../utils/export.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(createAccount),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBoder,
            right: PaddingSizes.introPageBoder,
            top: PaddingSizes.introPageTop,
          ),
          child: Column(
            children: [
              const Text(
                createAccountBodyText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 25.0,
              ),
              StandardTextForm(label: name),
              const SizedBox(
                height: 25.0,
              ),
              StandardTextForm(label: email),
              const SizedBox(
                height: 25.0,
              ),
              StandardTextForm(label: password),
              const SizedBox(
                height: 25.0,
              ),
              StandardTextForm(label: confirmPassword),
              const SizedBox(
                height: 15.0,
              ),
              StandardButton(
                isCenter: false,
                buttonText: createAccount,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
