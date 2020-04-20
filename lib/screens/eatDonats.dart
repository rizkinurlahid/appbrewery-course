import 'package:flutter/material.dart';

class EatDonats extends StatefulWidget {
  @override
  _EatDonatsState createState() => _EatDonatsState();
}

class _EatDonatsState extends State<EatDonats> {
  int counter = 0;

  void add() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () => add(),
      ),
      appBar: AppBar(
        title: Text("Donats"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Number of Donats Eaten :"),
            Text(counter.toString()),
          ],
        ),
      ),
    );
  }
}
