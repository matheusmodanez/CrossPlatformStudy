import 'package:flutter/material.dart';
import 'package:matheusnathan_sit/src/app/modules/home_page.dart';
import 'package:matheusnathan_sit/src/theme/theme_constants.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: HomePage(),
    );
  }
}
