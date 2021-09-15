import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylohphone());

class Xylohphone extends StatelessWidget {
  const Xylohphone({Key? key}) : super(key: key);
  // add it to your class as a static member
  static AudioCache player = AudioCache();

  // void PlaySound(int filenumber) {
  //   final player = AudioCache();
  //   player.play('note$filenumber.wav');
  // }

  Expanded BuildKey({MaterialColor? color, int? soundNumber}) => Expanded(
        child: TextButton(
          onPressed: () {
            final player = AudioCache();
            player.play('note$soundNumber.wav');
          },
          child: Text(""),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Xylohphone"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuildKey(color: Colors.red, soundNumber: 1),
            BuildKey(color: Colors.blue, soundNumber: 2),
            BuildKey(color: Colors.green, soundNumber: 3),
            BuildKey(color: Colors.yellow, soundNumber: 4),
            BuildKey(color: Colors.grey, soundNumber: 5),
            BuildKey(color: Colors.purple, soundNumber: 6),
            BuildKey(color: Colors.indigo, soundNumber: 7),
          ],
        ),
      ),
    ));
  }
}
