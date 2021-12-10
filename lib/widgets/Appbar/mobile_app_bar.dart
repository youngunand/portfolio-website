import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_site_test/services/my_service.dart';

class MobileAppBar extends StatelessWidget {
  MyService _myService = MyService();
  MobileAppBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    _myService.scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                  color: Theme.of(context).focusColor,
                  iconSize: 35,
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
           Align(alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: AutoSizeText('Andreas Herzinger', style: Theme.of(context).textTheme.caption,)),),
        ],
      ),
    );
  }
}
