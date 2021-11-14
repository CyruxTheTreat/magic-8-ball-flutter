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
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[600],
        title: Text('magic 8 ball'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override

  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {

            ballNumber = Random().nextInt(5) + 1;
          });
        },

        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
