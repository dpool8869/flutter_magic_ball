// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BallLayout()
  ));
}

class BallLayout extends StatelessWidget {
  const BallLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemBlue,
        title: Center(
          child: Text(
            "ASK ME ANYTHING",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      body: BallPage(),
    );
  }
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});


  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset("images/ball$ballNumber.png"),
        ),
      ),
    );
  }
}

