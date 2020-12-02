import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded biuldKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          PlaySound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              biuldKey(color: Colors.red, soundNumber: 1),
              biuldKey(color: Colors.orange, soundNumber: 2),
              biuldKey(color: Colors.yellow, soundNumber: 3),
              biuldKey(color: Colors.green, soundNumber: 4),
              biuldKey(color: Colors.teal, soundNumber: 5),
              biuldKey(color: Colors.blue, soundNumber: 6),
              biuldKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
