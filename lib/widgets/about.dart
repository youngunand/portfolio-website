import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final double height;
  const AboutPage(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: Colors.yellow,
      child: Text('About'),
    );
  }
}
