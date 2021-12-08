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
        hoverColor: Color(0xff06133f),
        hintColor: Color(0xff071852),
        focusColor: Color(0xfff76c6c),
        shadowColor: Color(0xffa8d0e6),
        cardColor: Color(0xff050035),
        textTheme: TextTheme(
            headline1: TextStyle(fontSize: 150, color: Color(0xfff76c6c)),
            headline2: TextStyle(
                fontSize: 22, color: Color.fromRGBO(236, 240, 241, 0.75)),
            subtitle1: TextStyle(
                fontSize: 22,
                fontStyle: FontStyle.normal,
                color: Color(0xffd0d3d4)),
            subtitle2: TextStyle(
              fontSize: 50,
              color: Color(0xfff76c6c),
            ),
            bodyText1: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(236, 240, 241, 0.9),
                height: 1.6),
            bodyText2:
                TextStyle(fontSize: 18, color: Color(0xfff76c6c), height: 1.6),
            overline: TextStyle(fontSize: 28, color: Color(0xfff76c6c))),
      ),
      home: HomeScreen(),
    );
  }
}
