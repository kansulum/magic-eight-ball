import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
              title: Text('Eight Ball'),
              backgroundColor: Colors.blue
          ) ,
          body: EightBallPage(),
        ),
  ));
}

class EightBallPage extends StatefulWidget {
  const EightBallPage({super.key});

  @override
  State<EightBallPage> createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  int eightballmagic =1;

  void ChangeMagicEightBall(){
    setState(() {
      eightballmagic = Random().nextInt(4)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(
            onPressed: (){
              ChangeMagicEightBall();
            },
            child: Image.asset('images/ball$eightballmagic.png'),

          ))
        ],
      ),
    );
  }
}
