import 'package:flutter/material.dart';
import 'package:palindrome_game/texttheme.dart';

class AppTheme {

AppTheme._();

  static ThemeData lightTheme = ThemeData(
  brightness: Brightness.light, 
  textTheme: textTheme.lightTextTheme);


  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: textTheme.darkTextTheme
      );
}
