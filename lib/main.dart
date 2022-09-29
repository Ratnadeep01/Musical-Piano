import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void sound(int n){
    final Player = AudioCache();
    Player.play('note$n.wav');
  }

  Expanded button({required Color color,required int n, required bool colour}){
    return Expanded(
      child: GestureDetector(
        onTap: (){
          sound(n);
        },
        child: Container(
          color: color,
          child: Center(
            child: colour ? const Text(
              'Tap',
              style: TextStyle(
                color: Colors.black,
              ),
            ):const Text(
              'Tap',
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              button(color: Colors.black, n: 1, colour: false),
              button(color: Colors.white70, n: 2, colour: true),
              button(color: Colors.black, n: 3, colour: false),
              button(color: Colors.white70,n: 4, colour: true),
              button(color: Colors.black, n: 5, colour: false),
              button(color: Colors.white70, n: 6, colour: true),
              button(color: Colors.black,n: 7, colour: false),
            ],
          ),
        ),

      ),
    );
  }
}