import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: ListView(
        children: const [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter a word..',
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))
              ),
              fillColor: Colors.white
            ),
          )
        ],
      ),
    );
  }
}

