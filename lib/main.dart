import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black, body: SafeArea(child: Buttons())),
    );
  }
}

class Buttons extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget buildKey(Color color, int number) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(Colors.red, 1),
          buildKey(Colors.orange, 2),
          buildKey(Colors.yellow, 3),
          buildKey(Colors.lightGreen, 4),
          buildKey(Colors.green, 5),
          buildKey(Colors.blue, 6),
          buildKey(Colors.purple, 7),
        ],
      ),
    );
  }
}

//
//child: FlatButton(
//onPressed: () {
//final player = AudioCache();
//player.play('note1.wav');
//},
//child: Text('Click Me'),
//)),
