import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  AudioCache audioCache = AudioCache();

  playNote(int numberNote){
    audioCache.play("audio/note$numberNote.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.deepOrangeAccent,
                  child: TextButton(
                    onPressed: () {
                      playNote(1);
                    },
                    child: Text("d"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: TextButton(
                    onPressed: () {
                      playNote(2);
                    },
                    child: Text("d"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {
                      playNote(3);
                    },
                    child: Text("d"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () {
                      playNote(4);
                    },
                    child: Text("d"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
