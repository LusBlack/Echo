import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text(style:TextStyle(color: Colors.white),'Dicee'),),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  
  @override
 _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber =  5; //Random().nextInt(6) + 1;
  int rightDice = 5;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) +1;
      });
  }
 @override
  Widget build(BuildContext context) {
    return Center(child: 
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child:TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
  
              SizedBox(
                width: 20.0
              ),
          
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightDice.png')),
          ),
        ],
      ),
    );
  }
}



