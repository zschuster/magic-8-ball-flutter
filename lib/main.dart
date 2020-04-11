import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything!'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Container(
        child: Ball(),
        decoration: BoxDecoration(
            gradient: RadialGradient(
                colors: [Colors.white, Colors.grey, Colors.blueGrey],
                radius: 1.0)),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  Random imageNumberGen = Random(0127);
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
      child: Image.asset('images/ball$ballNumber.png'),
      onPressed: () {
        setState(() {
          ballNumber = imageNumberGen.nextInt(5) + 1;
          print('ball number: $ballNumber');
        });
      },
    ));
  }
}
