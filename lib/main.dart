import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int _myappball = Random().nextInt(5)+1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(child: Text('Ask Me Anything')),
            backgroundColor: Colors.lightBlue,
          ),
          body: Center(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    _myappball = Random().nextInt(5)+1;
                  });
                },
                child: Image.asset('images/ball$_myappball.png')),
          )),
    );
  }
}
