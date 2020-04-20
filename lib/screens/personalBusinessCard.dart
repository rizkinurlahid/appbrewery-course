import 'package:flutter/material.dart';

class PersonalBusinessCard extends StatefulWidget {
  @override
  _PersonalBusinessCardState createState() => _PersonalBusinessCardState();
}

class _PersonalBusinessCardState extends State<PersonalBusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/image.jpg'),
              ),
              // Container(
              //   width: 100.0,
              //   height: 100.0,
              //   child: ClipRRect(
              //     child: Image.asset('images/image.jpg'),
              //     borderRadius: BorderRadius.circular(250),
              //   ),
              // ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Muh Rizki Nurlahid",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                ".dart .kt",
                style: TextStyle(
                  color: Colors.teal[100],
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150.0,
                height: 20.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal),
                  title: Text(
                    "+62 889 8081 7926",
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal),
                  title: Text(
                    "greenrizky354@gmail.com",
                    style: TextStyle(color: Colors.teal),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
