import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: SafeArea(child: Buttons())),
    );
  }
}

class Buttons extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          FlatButton(
            color: Colors.red,
            onPressed: () {
              playSound(1);
            },
          ),
          FlatButton(
            color: Colors.orange,
            onPressed: () {
              final player = AudioCache();
              playSound(2);
            },
          ),
          FlatButton(
            color: Colors.yellow,
            onPressed: () {
              playSound(3);
            },
          ),
          FlatButton(
            color: Colors.lightGreen,
            onPressed: () {
              playSound(4);
            },
          ),
          FlatButton(
            color: Colors.green,
            onPressed: () {
              playSound(5);
            },
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () {
              playSound(6);
            },
          ),
          FlatButton(
            color: Colors.purple,
            onPressed: () {
              playSound(7);
            },
          )
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
