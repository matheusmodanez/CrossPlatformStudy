import 'package:app_sis/src/app/components/standard_button.dart';
import 'package:app_sis/src/app/components/standard_page.dart';
import 'package:app_sis/src/app/modules/balance_page/balance_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: Column(
          children: [
            Text("Nossa Home"),
            StandardButton(
              isCenter: true,
                buttonText: 'Consultar Saldo',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => BalancePage()),
                    ),
                  );
                })
          ],
        ),
        pageTitle: "Home");
  }
}
