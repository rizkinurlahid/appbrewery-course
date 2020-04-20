import 'package:flutter/material.dart';

class IAmRich extends StatefulWidget {
  @override
  _IAmRichState createState() => _IAmRichState();
}

class _IAmRichState extends State<IAmRich> {
  // NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg')
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("I Am Rich"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/diamond.png'),
        ),
      ),
    );
  }
}
