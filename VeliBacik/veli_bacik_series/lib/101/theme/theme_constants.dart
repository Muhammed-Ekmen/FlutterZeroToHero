import 'package:flutter/material.dart';

class CustomThemes {
  CustomThemes._();

  static CustomThemes get instance => CustomThemes._();

  final ThemeData darkTheme = ThemeData.dark();
  final ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 32,
        fontFamily: "marhey",
        color: Colors.black,
      ),
    ),
  );
}
