import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData.dark().copyWith(
    // Colors
    primaryColor: Colors.white,
    accentColor: Colors.orangeAccent,
    primaryColorDark: Colors.black12,
    primaryColorLight: Colors.white54,
    scaffoldBackgroundColor: Colors.white54,
    backgroundColor: Colors.white,
    textSelectionColor: Colors.black38,

    // Text
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.grey,
        fontSize: 32,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
