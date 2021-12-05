import 'package:flutter/material.dart';

class MobileAboutPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    
    return Container(
      width: double.infinity,
      height: height,
      color: Colors.yellow,
      child: Text('About'),
    );
  }
}
