import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final double height;
  const LandingPage(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child: Text('LandingPage'),
      decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [Colors.red, Colors.blueAccent])),
    );
  }
}
