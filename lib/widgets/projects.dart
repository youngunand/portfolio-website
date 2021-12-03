import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  final double height;
  const ProjectPage( this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: Colors.pinkAccent,
      child: Text('Projects'),
    );
  }
}
