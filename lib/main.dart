import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  void playSound(int soundNumber){
    final  player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int numberSound}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(numberSound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red,numberSound: 1),
                buildKey(color: Colors.orange,numberSound: 2),
                buildKey(color: Colors.yellow,numberSound: 3),
                buildKey(color: Colors.green,numberSound: 4),
                buildKey(color: Colors.teal,numberSound: 5),
                buildKey(color: Colors.blue,numberSound: 6),
                buildKey(color: Colors.purple,numberSound: 7),
              ],
            )
        ),
      ),
    );
  }

}
