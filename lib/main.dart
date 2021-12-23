import 'package:dicee/two_player.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          actions: [
            InkWell(
                onTap: () {
                  BuildContext context;
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (buildContext) => Computer()));
                },
                child: Icon(Icons.computer))
          ],
          title: Text('Art B Technologies'),
          backgroundColor: Colors.teal,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                    print('dicenmber = $leftDiceNumber');
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                      print('diceNumber = $rightDiceNumber.png');
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'))),
        ],
      ),
    );
  }
}
