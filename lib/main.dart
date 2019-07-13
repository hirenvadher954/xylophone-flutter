import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSong(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget buildLayout({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSong(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildLayout(color: Colors.red, soundNumber: 1),
              buildLayout(color: Colors.orange, soundNumber: 2),
              buildLayout(color: Colors.yellow, soundNumber: 3),
              buildLayout(color: Colors.green, soundNumber: 4),
              buildLayout(color: Colors.teal, soundNumber: 5),
              buildLayout(color: Colors.blue, soundNumber: 6),
              buildLayout(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    ));
  }
}
