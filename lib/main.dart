import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal.shade900,
          elevation: 100,
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
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void face() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                setState(() {
                  face();
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                setState(() {
                  face();
                });
                //print('Right button got pressed');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
