import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Xylophone'),),
      body: Myapp(),
    ),
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,

      children: <Widget>[ex(1,Colors.red),
        
        ex(2,Colors.brown),
        ex(3,Colors.deepOrange),
        ex(4,Colors.deepOrangeAccent),
        ex(5,Colors.amber),
        ex(6,Colors.yellowAccent),
        ex(7,Colors.blue)

      ],),
    );
  }
}

Expanded ex(int number,Color color) {
  return Expanded(
    child: Container(color: color,child: FlatButton(
      onPressed: (){
        final play = AudioCache();
        play.play('note$number.wav');
      },
    ),),);
}
