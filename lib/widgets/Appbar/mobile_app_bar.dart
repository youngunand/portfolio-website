import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  MobileAppBar({ Key? key }) : super(key: key);

  TextStyle textButtonStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.deepOrange[900]!, Colors.purple[900]!], begin: Alignment.centerLeft, end: Alignment.centerRight)
      ),
    );
  }
}