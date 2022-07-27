import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changedDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print("Left button got pressed");
    });
  }

  @override
  Widget build(BuildContext context) {
    // leftDiceNumber = 4;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changedDiceFace();
                  },
                  child: Image(
                    image: AssetImage("images/dice$leftDiceNumber.png"),
                  ),
                ),
              ),
              // Expanded(child: Image.asset("images/dice2.png"))
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changedDiceFace();
                  },
                  child: Image.asset("images/dice$rightDiceNumber.png"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
