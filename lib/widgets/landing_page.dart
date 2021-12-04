import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final double height;
  LandingPage(this.height);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: Theme.of(context).hoverColor,
      child: Center(child: Text('Welcome', style: Theme.of(context).textTheme.headline1,)),);
  }
}
