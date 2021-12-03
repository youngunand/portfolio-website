import 'package:flutter/material.dart';

class JourneyPage extends StatelessWidget {
  final double height;
  const JourneyPage( this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: Colors.blue,
      child: Text('Journey'),
    );
  }
}
