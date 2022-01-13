import 'package:flutter/material.dart';

class Themes {
  final lightTheme =
      ThemeData.light().copyWith(appBarTheme: AppBarTheme(color: Colors.green));

  final darkTheme =
      ThemeData.dark().copyWith(appBarTheme: AppBarTheme(color: Colors.black));
}
