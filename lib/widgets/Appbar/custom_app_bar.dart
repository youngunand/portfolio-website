import 'package:flutter/material.dart';

import 'desktop_app_bar.dart';
import 'mobile_app_bar.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          //Desktop
          return DesktopAppBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        //Medium Size (e.g Tablets)
          return DesktopAppBar();
        } else {
          //Mobile
          return MobileAppBar();
        }
      },
    );
  }
}
