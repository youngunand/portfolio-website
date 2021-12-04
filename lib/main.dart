import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hoverColor: Color(0xff374785),
        hintColor: Color(0xfff8e9a1),
        focusColor: Color(0xfff76c6c),
        shadowColor: Color(0xffa8d0e6),
        cardColor: Color(0xff24305e),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 150, color: Color(0xfff76c6c)))//.apply(displayColor: Theme.of(context).focusColor)
        
      ),
      home: HomeScreen(),
    );
  }
}


