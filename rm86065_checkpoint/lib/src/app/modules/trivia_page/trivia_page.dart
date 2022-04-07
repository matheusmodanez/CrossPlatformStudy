import 'package:flutter/material.dart';
import 'package:rm86065_checkpoint/src/app/components/standard_page.dart';
import 'package:rm86065_checkpoint/src/utils/ui_text.dart';

class TriviaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      body: Column(
        children: [
          Text(
            triviaQ,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 100.0,
          ),
          Text(
            triviaA,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(
            height: 35.0,
          ),
          Image.asset('assets/images/duck.jpg'),
        ],
      ),
      pageTitle: "Trivia",
    );
  }
}
