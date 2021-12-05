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

  Widget buildKey (Color colorKey, int note){
    return Expanded(
      child: Container(
        color: colorKey,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text("Musica"),
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
              buildKey(Colors.red, 1),
              buildKey(Colors.yellow, 2),
              buildKey(Colors.blue, 3),
              buildKey(Colors.black12, 4),
              buildKey(Colors.brown, 5),
              buildKey(Colors.deepOrangeAccent, 6),
              buildKey(Colors.white54, 7),
            ],
          ),
        ),
      ),
    );
  }
}
