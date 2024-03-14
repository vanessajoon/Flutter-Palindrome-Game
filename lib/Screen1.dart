import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String input = '';
  bool ispalindrome = false;

  void checkPalindrome() {
    String cleanedText = input;
    String reverseText = cleanedText.split('').reversed.join('');
    ispalindrome = cleanedText == reverseText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      body: ListView(children: [
        const Positioned(
          top: 0,
          left: 0,
          // ignore: sort_child_properties_last
          child: Image(
            image: AssetImage('assetImage/cloud2.png'),
            height: 150,
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: const Text(
              'Guess a palindrome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
              // Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            onChanged: (text) {
              setState(() {
                input = text;
              });
            },
            decoration: const InputDecoration(
              labelText: 'Enter a word...',
              prefixIcon: Icon(Icons.games),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            margin: const EdgeInsets.all(40),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  checkPalindrome();
                });
              },
              child: const Text('Enter'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20.0),
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                fixedSize: const Size(20, 60),
                backgroundColor: Colors.black,
                foregroundColor: Colors.lightBlueAccent[100],
                elevation: 20,
                shadowColor: Colors.black,
                side: const BorderSide(color: Colors.lightBlueAccent, width: 2),
                shape: const StadiumBorder(),
              ),
            )),
        Center(
          child: Text(
            ispalindrome
                ? 'Given String is Palindrome'
                : 'Given String is not palindrome',
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Container(
          height: 250.0,
          margin: const EdgeInsets.only(top: 50),
          decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 150.0, image: AssetImage('assetImage/thinking2.png')),
          ),
        ),
      ]),
    );
  }
}
