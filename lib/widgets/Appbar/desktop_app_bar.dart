import 'package:flutter/material.dart';

class DesktopAppBar extends StatelessWidget {
  DesktopAppBar({Key? key}) : super(key: key);
  TextStyle textButtonStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white);

  TextStyle labelStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.deepOrange[900]!, Colors.purple[900]!], begin: Alignment.centerLeft, end: Alignment.centerRight)
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('SendIT Studios', style: labelStyle,)),
          SizedBox(width: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'About',
                    style: textButtonStyle,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Journey',
                    style: textButtonStyle,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Projects',
                    style: textButtonStyle,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Vision',
                    style: textButtonStyle,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
