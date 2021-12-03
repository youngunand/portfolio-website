import 'package:flutter/material.dart';

class VisionPage extends StatelessWidget {
  final double height;
  const VisionPage( this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: Colors.redAccent,
      child: Text('Vision'),
    );
  }
}
