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
                    child: Text("Nota Do"),
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
                    child: Text("Nota Re"),
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
                    child: Text("Nota Mi"),
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
                    child: Text("Nota Fa"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.deepPurpleAccent,
                  child: TextButton(
                    onPressed: () {
                      playNote(5);
                    },
                    child: Text("Nota Sol"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white38,
                  child: TextButton(
                    onPressed: () {
                      playNote(6);
                    },
                    child: Text("Nota La"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.greenAccent,
                  child: TextButton(
                    onPressed: () {
                      playNote(7);
                    },
                    child: Text("Nota Si"),
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
