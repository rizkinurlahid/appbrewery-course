import 'dart:math';

import 'package:flutter/material.dart';

class Magic8Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: Page(),
    );
  }
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print('ballNumer : $ballNumber');
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
