import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 100.0,
          backgroundColor: Colors.red[900],
          title: Center(
            child: Text('Dicee',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ),
        ),
        body: DicePage(
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget{
  @override
  _DicePageState createState()=> _DicePageState();
}

class _DicePageState extends State<DicePage> {
int leftDiceNumber = 1;
int rightDiceNumber = 1;

void changeDiceFace(){
  setState(() {
    leftDiceNumber = Random().nextInt(6)+1; ;
    rightDiceNumber = Random().nextInt(6)+1 ;
  });
}

@override
Widget build(BuildContext context) {
  return Center(
    child: Row(
      children: <Widget>[
        Expanded(
          child: TextButton(onPressed: (){
            changeDiceFace();
          },
            child: Image.asset('images1/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
            child: TextButton(onPressed: (){
              changeDiceFace();
            },
              child: Image.asset('images1/dice$rightDiceNumber.png'),
            )
        ),
      ],
    ),
  );
}
}


