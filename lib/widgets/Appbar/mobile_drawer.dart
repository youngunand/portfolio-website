import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  MobileDrawer({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).cardColor,
        child: ListView(
          children: [
            DrawerHeader(child: Text('')),
            ListTile(title: Text('About', style: Theme.of(context).textTheme.headline2,),contentPadding: EdgeInsets.symmetric(horizontal: 35),),
            Divider(indent: 15, endIndent: 15, color: Theme.of(context).hoverColor,),
            ListTile(title: Text('Vision', style: Theme.of(context).textTheme.headline2,),contentPadding: EdgeInsets.symmetric(horizontal: 35)),
            Divider(indent: 15, endIndent: 15, color: Theme.of(context).hoverColor,),
            ListTile(title: Text('Journey', style: Theme.of(context).textTheme.headline2,),contentPadding: EdgeInsets.symmetric(horizontal: 35)),
            Divider(indent: 15, endIndent: 15, color: Theme.of(context).hoverColor,),
            ListTile(title: Text('Projects', style: Theme.of(context).textTheme.headline2,),contentPadding: EdgeInsets.symmetric(horizontal: 35)),
          ],
        ),
      ),
    );
  }
}