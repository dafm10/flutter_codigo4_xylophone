import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  AudioCache audioCache = AudioCache();

  void playNote(int numberNote){
    audioCache.play("audio/note$numberNote.wav");
  }

  Widget buildKey (Color colorKey, int note, String mensaje){
    return Expanded(
      child: Container(
        color: colorKey,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text(mensaje),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1, 'Do'),
              buildKey(Colors.yellow, 2, 'Re'),
              buildKey(Colors.blue, 3, 'Mi'),
              buildKey(Colors.black12, 4, 'Fa'),
              buildKey(Colors.brown, 5, 'Sol'),
              buildKey(Colors.deepOrangeAccent, 6, 'La'),
              buildKey(Colors.white54, 7, 'Si'),
            ],
          ),
        ),
      ),
    );
  }
}
