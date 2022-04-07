import 'package:flutter/material.dart';
import 'package:rm86065_checkpoint/src/app/modules/home_page/home_page.dart';
import 'package:rm86065_checkpoint/src/theme/theme_constants.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: lightTheme,
      home: HomePage(),
    );
  }
}