import 'package:app_sis/src/app/components/standard_clickable_text.dart';
import 'package:app_sis/src/app/components/standard_button.dart';
import 'package:app_sis/src/app/components/standard_textform.dart';
import 'package:app_sis/src/app/modules/create_account/create_account.dart';
import 'package:app_sis/src/app/modules/home/home_page.dart';
import 'package:app_sis/src/utils/export.dart';
import 'package:app_sis/src/utils/ui_text.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(
                  left: PaddingSizes.introPageBoder,
                  right: PaddingSizes.introPageBoder,
                  top: PaddingSizes.introPageTop,
                ),
                child: Column(
                  children: [
                    Image.asset('assets/images/fiap.png'),
                    StandardTextForm(label: email),
                    const SizedBox(
                      height: 15.0,
                    ),
                    StandardTextForm(label: password),
                    const SizedBox(
                      height: 15.0,
                    ),
                    StandardButton(
                        isCenter: false,
                        buttonText: login,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => HomePage()),
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 15.0,
                    ),
                    StandardButton(
                        isCenter: false,
                        buttonText: createAccount,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => CreateAccount()),
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 15.0,
                    ),
                    StandardClickableText(
                      label: "Esqueci a senha",
                      OnTap: () {
                        print("olá");
                      },
                    )
                  ],
                ))));
  }
}
