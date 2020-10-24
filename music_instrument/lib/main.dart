import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Instrumental(),
    ),
  ));
}

class Instrumental extends StatefulWidget {
  @override
  _InstrumentalState createState() => _InstrumentalState();
}

class _InstrumentalState extends State<Instrumental> {
  void say({String n1, String n2}) {
    print(n1 + n2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            this.buildKey(1, Colors.red),
            this.buildKey(2, Colors.yellow),
            this.buildKey(3, Colors.blue),
            this.buildKey(4, Colors.pink),
            this.buildKey(5, Colors.green),
            this.buildKey(6, Colors.orange),
            this.buildKey(7, Colors.indigo),
          ],
        ),
      ),
    );
  }

  Expanded buildKey(int soundNumber, MaterialColor color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          this.playAudio(soundNumber);
        },
      ),
    );
  }

  void playAudio(int soundNumber) {
    final AudioCache player = AudioCache(prefix: 'assets/audio/');
    player.play('note$soundNumber.wav');
    print('Playing audio');
  }
}
