import 'dart:math';
import 'package:flutter/material.dart';

/// Home Page Class
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _transparency = 255;
  final int _max = 266;
  int _red = 255;
  int _green = 255;
  int _blue = 255;


///The function change rgb
  void _changeColor() {
    setState(() {
      _red = Random().nextInt(_max);
      _green = Random().nextInt(_max);
      _blue = Random().nextInt(_max);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: InkWell(
          onTap: _changeColor,
          child: Ink(
            color: Color.fromARGB(_transparency, _red, _green, _blue),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Hey Here',
                ),
                Text(
                  'R:$_red G:$_green B:$_blue',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
