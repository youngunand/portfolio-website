import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  MobileDrawer({ Key? key }) : super(key: key);

  TextStyle textButtonStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

  TextStyle labelStyle = TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.indigo,
        child: ListView(
          children: [
            DrawerHeader(child: Text('SendIt Studios', style: labelStyle,)),
            ListTile(title: Text('About', style: textButtonStyle,),contentPadding: EdgeInsets.symmetric(horizontal: 35),),
            Divider(indent: 15, endIndent: 15, color: Colors.white,),
            ListTile(title: Text('Journey', style: textButtonStyle,),contentPadding: EdgeInsets.symmetric(horizontal: 35)),
            Divider(indent: 15, endIndent: 15, color: Colors.white,),
            ListTile(title: Text('Projects', style: textButtonStyle,),contentPadding: EdgeInsets.symmetric(horizontal: 35)),
            Divider(indent: 15, endIndent: 15, color: Colors.white,),
            ListTile(title: Text('Vision', style: textButtonStyle,),contentPadding: EdgeInsets.symmetric(horizontal: 35)),
          ],
        ),
      ),
    );
  }
}