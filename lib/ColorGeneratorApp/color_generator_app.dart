import 'package:flutter/material.dart';
import 'package:flutter_color_generator/Screens/my_home_page.dart';

///AppClass
class ColorGeneratorApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyHomePage(),
    );
  }
}
