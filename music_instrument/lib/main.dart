import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Instrumental'),
      ),
      body: Instrumental(),
    ),
  ));
}

class Instrumental extends StatefulWidget {
  @override
  _InstrumentalState createState() => _InstrumentalState();
}

class _InstrumentalState extends State<Instrumental> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: FlatButton(
          child: Text('Play Audio'),
          onPressed: () {
            this.playAudio();
          },
        ),
      ),
    );
  }

  void playAudio() {
    final AudioCache player = AudioCache(prefix: 'assets/audio/');
    player.play('note1.wav');
    print('Playing audio');
  }
}
