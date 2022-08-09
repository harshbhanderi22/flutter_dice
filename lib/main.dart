import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
                color: Colors.black,
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          //Get students to create the second die as a challenge
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
                color: Colors.black,
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}