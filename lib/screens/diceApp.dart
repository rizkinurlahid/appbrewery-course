import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void generateNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      print("Left : $leftDiceNumber");

      rightDiceNumber = Random().nextInt(6) + 1;
      print("Right : $rightDiceNumber");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dicee"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  generateNumber();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  generateNumber();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
