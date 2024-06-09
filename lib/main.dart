import 'package:flutter/material.dart';
import 'dart:math';


void main() => runApp(const Ball());

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          backgroundColor:const Color.fromARGB(255, 0, 62, 116),
          title: const Text('Ask me Anything',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
        backgroundColor: Colors.blue,
        body: Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
                print(' $ballNumber');
              });
            },
            child: Image.asset('lib/Images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
