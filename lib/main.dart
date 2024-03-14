import 'package:flutter/material.dart';
import 'package:palindrome_game/Screen1.dart';
import 'package:palindrome_game/theme.dart';

void main() {
  runApp(const MyGame());
}


class MyGame extends StatelessWidget {
  const MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.lightTheme,
      themeMode: ThemeMode.system,
      home: const Screen1(),
    );
  }
}