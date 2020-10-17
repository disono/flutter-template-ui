import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () => {
                print("Click 1")
              },
              child: Image.asset('assets/images/dice1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () => {
                print("Click 2")
              },
              child: Image.asset('assets/images/dice1.png'),
            ),
          )
        ],
      ),
    );
  }
}
