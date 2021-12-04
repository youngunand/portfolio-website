import 'package:flutter/material.dart';

class DesktopAppBar extends StatelessWidget {
  DesktopAppBar({Key? key}) : super(key: key);
  TextStyle textButtonStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

  TextStyle labelStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Theme.of(context).cardColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('SendIT Studios', style: labelStyle,)),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'About',
                      style: textButtonStyle,
                    )),
                SizedBox(width: 30,),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Journey',
                      style: textButtonStyle,
                    )),
                SizedBox(width: 30,),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Projects',
                      style: textButtonStyle,
                    )),
                SizedBox(width: 30,),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Vision',
                      style: textButtonStyle,
                    )),
                SizedBox(width: 100,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
