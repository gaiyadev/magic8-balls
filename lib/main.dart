import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Dice App',
          ),
        ),
        body: MagicBalls(),
      ),
    );
  }
}

class MagicBalls extends StatefulWidget {
  @override
  _MagicBallsState createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  int ballNumber = 1;
  //Changing balls on click
  void magicBallChange() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print(ballNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                magicBallChange();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
