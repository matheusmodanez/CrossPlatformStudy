import 'package:flutter/material.dart';

const primarySwatchColor = Colors.pink;
const buttonTextColor = Color.fromARGB(255, 232, 6, 66);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: primarySwatchColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.black,
      onPrimary: buttonTextColor,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);
