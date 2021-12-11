import 'package:flutter/material.dart';
import 'package:web_site_test/services/my_service.dart';

class MobileDrawer extends StatelessWidget {
  MobileDrawer({Key? key}) : super(key: key);
  double height = 1;
  double width = 1;

  MyService _myService = MyService();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Drawer(
      child: Container(
        color: Theme.of(context).cardColor,
        child: ListView(
          children: [
            DrawerHeader(child: Text('')),
            ListTile(
              title: Text(
                'About',
                style: Theme.of(context).textTheme.headline2,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 35),
              onTap: () {
                Navigator.of(context).pop();
                _myService.scrollController.animateTo(height,
                    duration: Duration(milliseconds: 1200), curve: Curves.ease);
              },
            ),
            Divider(
              indent: 15,
              endIndent: 15,
              color: Theme.of(context).hoverColor,
            ),
            ListTile(
                title: Text(
                  'Vision',
                  style: Theme.of(context).textTheme.headline2,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
                onTap: () {
                  Navigator.of(context).pop();
                _myService.scrollController.animateTo(2.7*height,
                    duration: Duration(milliseconds: 1200), curve: Curves.ease);
                },),
            Divider(
              indent: 15,
              endIndent: 15,
              color: Theme.of(context).hoverColor,
            ),
            ListTile(
                title: Text(
                  'Journey',
                  style: Theme.of(context).textTheme.headline2,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
                onTap: () {
                  Navigator.of(context).pop();
                _myService.scrollController.animateTo(3.9*height,
                    duration: Duration(milliseconds: 1200), curve: Curves.ease);
                }),
            Divider(
              indent: 15,
              endIndent: 15,
              color: Theme.of(context).hoverColor,
            ),
            ListTile(
                title: Text(
                  'Projects',
                  style: Theme.of(context).textTheme.headline2,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
                onTap: () {
                  Navigator.of(context).pop();
                _myService.scrollController.animateTo(5.6* height,
                    duration: Duration(milliseconds: 1200), curve: Curves.ease);
                },),
            Divider(
              indent: 15,
              endIndent: 15,
              color: Theme.of(context).hoverColor,
            ),
            ListTile(
                title: Text(
                  'Contact',
                  style: Theme.of(context).textTheme.headline2,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 35),
                onTap: () {
                  Navigator.of(context).pop();
                _myService.scrollController.animateTo(9.5* height,
                    duration: Duration(milliseconds: 1200), curve: Curves.ease);
                },),
          ],
        ),
      ),
    );
  }
}
