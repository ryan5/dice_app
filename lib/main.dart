import 'package:flutter/material.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
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

        ),
      ),
    );
  }
}
