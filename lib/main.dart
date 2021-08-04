import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 3;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset(
                'assets/dice$leftDice.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset(
                'assets/dice$rightDice.png',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void changeDice() {
    rightDice = Random().nextInt(6) + 1;
    leftDice = Random().nextInt(6) + 1;
  }
}
