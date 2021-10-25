import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: PageDice(),
      ),
    ),
  );
}

class PageDice extends StatefulWidget {
  @override
  _PageDiceState createState() => _PageDiceState();
}

class _PageDiceState extends State<PageDice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  print('gogo');
                  changeDiceNumber();
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  print('gogo 2');
                  changeDiceNumber();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          )
        ],
      ),
    );
  }
}
