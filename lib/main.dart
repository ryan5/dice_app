import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  int leftDieNumber = 1;
  int rightDieNumber = 1;
  Widget build(BuildContext context) {
    void changeDice(){
      leftDieNumber = Random().nextInt(6)+1;
      rightDieNumber = Random().nextInt(6)+1;
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Dice Rolls'
          ),
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(child: 
              FlatButton(onPressed:
              changeDice,
                  child: Image.asset(
                      'images/inverted-dice-$leftDieNumber.png'),
              ),
              ),
              Expanded(child: 
              FlatButton(onPressed:
              changeDice,
                  child: Image.asset(
                      'images/inverted-dice-$rightDieNumber.png'),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
