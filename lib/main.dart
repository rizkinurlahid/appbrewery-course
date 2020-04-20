import 'dart:math';

import 'package:appbrewery_course/screens/destini.dart';
import 'package:appbrewery_course/screens/diceApp.dart';
import 'package:appbrewery_course/screens/eatDonats.dart';
import 'package:appbrewery_course/screens/iAmRich.dart';
import 'package:appbrewery_course/screens/magic8Ball.dart';
import 'package:appbrewery_course/screens/personalBusinessCard.dart';
import 'package:appbrewery_course/screens/quizzler.dart';
import 'package:appbrewery_course/screens/xylophone.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbrewery Course",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbrewery Course by Angela Yu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            button("I Am Rich", IAmRich()),
            button("Personal Business Card", PersonalBusinessCard()),
            button("Eat Donats", EatDonats()),
            button("Dice App", DiceApp()),
            button("Magic 8 Ball", Magic8Ball()),
            button("Xylophone", Xylophone()),
            button("Quizzler", Quizzler()),
            button("Destini", Destini())
          ],
        ),
      ),
    );
  }

  RaisedButton button(String text, Widget page) {
    int r = random.nextInt(255);
    int g = random.nextInt(255);
    int b = random.nextInt(255);
    return RaisedButton(
      child: Text(text, style: TextStyle(color: Colors.white)),
      color: Color.fromRGBO(r, g, b, 1),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => page)),
    );
  }
}
