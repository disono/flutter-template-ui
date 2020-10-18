import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: Text("Dice"),
      backgroundColor: Colors.red,
    ),
    body: DicePage(),
  )));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceCount = 1;
  int rightDiceCount = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () => {
                this.changedDiceFaced()
              },
              child: Image.asset('assets/images/dice$leftDiceCount.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () => {
                this.changedDiceFaced()
              },
              child: Image.asset('assets/images/dice$rightDiceCount.png'),
            ),
          )
        ],
      ),
    );
  }

  void changedDiceFaced() {
    setState(() {
      this.leftDiceCount = Random().nextInt(6) + 1;
      this.rightDiceCount = Random().nextInt(6) + 1;
    });
  }
}
