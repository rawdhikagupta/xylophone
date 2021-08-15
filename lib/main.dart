import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnum)
  {
    final player = AudioCache();
    player.play('note$soundnum.wav');
  }
  Expanded buildkey({Color keycolor,int keynote})
  {
    return Expanded(
      child: FlatButton(
        onPressed: () {

          playsound(keynote);
        },
        color: keycolor,
        minWidth: double.infinity,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            buildkey(keycolor: Colors.red,keynote: 1),
            buildkey(keycolor: Colors.orange,keynote: 2),
            buildkey(keycolor: Colors.yellow,keynote: 3),
            buildkey(keycolor: Colors.green,keynote: 4),
            buildkey(keycolor: Colors.teal,keynote: 5),
            buildkey(keycolor: Colors.blue,keynote: 6),
            buildkey(keycolor: Colors.purple,keynote: 7),

    ],),
        ),
      ),
    );
  }
}
