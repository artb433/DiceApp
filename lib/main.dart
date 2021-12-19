import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: () {
                  print('You pressed the first dice');
                },
                child: Image.asset('images/dice1.png')),
          ),
          Expanded(
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: () {
                    print('you pressed the second dice');
                  },
                  child: Image.asset('images/dice1.png'))),
        ],
      ),
    );
  }
}
