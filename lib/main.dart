import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      title: 'challenge',
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var firstImage = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('ASK ME ANYTHING'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: FlatButton(
            child: Image.asset('images/ball$firstImage.png'),
            onPressed: () {
              setState(() {
                firstImage = Random().nextInt(5) + 1;
              });
            },
          ),
        ),
      ),
    );
  }
}
