import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  int rightDieNumber = 1;
  int leftDieNumber = 1;

  Widget build(BuildContext context) {
    void changeDice(){
      rightDieNumber = Random().nextInt(6)+1;
      leftDieNumber = Random().nextInt(6)+1;
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
              FlatButton(onPressed:(){
                setState(() {
                  changeDice();
                });
              },
                child: Image.asset(
                    'images/inverted-dice-$leftDieNumber.png'),
              ),
              ),
              Expanded(child: 
              FlatButton(onPressed:(){
                setState(() {
                  changeDice();
                });
              },
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
