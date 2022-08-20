import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void _changeDiceNumbers() {
    setState(() {
      leftdicenumber = Random().nextInt(6) + 1;
      rightdicenumber = Random().nextInt(6) + 1;
      print('rolled Left dice: $leftdicenumber, Right dice: $rightdicenumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Image.asset('images/dice$leftdicenumber.png'),
                onPressed: _changeDiceNumbers,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: _changeDiceNumbers,
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
