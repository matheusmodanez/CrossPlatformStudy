import 'package:flutter/material.dart';
import 'package:rm86065_checkpoint/src/app/components/standard_page.dart';
import 'package:rm86065_checkpoint/src/app/components/standard_textform.dart';
import 'package:rm86065_checkpoint/src/app/modules/flutter_page/flutter_page.dart';
import 'package:rm86065_checkpoint/src/utils/ui_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
      body: Column(
        children: [
          GestureDetector(
            child: Image.asset('assets/images/ducklogo.png'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => FlutterPage()),
                ),
              );
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          StandardTextForm(label: "Digite seu nome"),
          const SizedBox(
            height: 20.0,
          ),
          StandardTextForm(label: "Digite sua idade"),
          const SizedBox(
            height: 50.0,
          ),
          Container(
            child: const Text(
              dados,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
      pageTitle: "Home",
    );
  }
}
