import 'package:flutter/material.dart';
import 'package:rm86065_checkpoint/src/app/components/standard_button.dart';
import 'package:rm86065_checkpoint/src/app/components/standard_page.dart';
import 'package:rm86065_checkpoint/src/app/modules/trivia_page/trivia_page.dart';
import 'package:rm86065_checkpoint/src/utils/ui_text.dart';

class FlutterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: Column(
          children: [
            Container(
              child: Text(
                flutterQ,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            Container(
              child: Text(
                flutterA,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 100.0,
            ),
            StandardButton(
                buttonText: "Trivia",
                isCenter: true,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => TriviaPage()),
                    ),
                  );
                }),
          ],
        ),
        pageTitle: "Sobre o Flutter");
  }
}
