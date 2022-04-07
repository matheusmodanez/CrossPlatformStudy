import 'package:flutter/material.dart';

const primarySwatchColor = Colors.brown;
const buttonTextColor = Color.fromARGB(255, 208, 181, 146);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: primarySwatchColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 28, 12, 12),
      onPrimary: buttonTextColor,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: primarySwatchColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 28, 12, 12),
      onPrimary: buttonTextColor,
    ),
  ),
);
