import 'package:flutter/material.dart';
import 'package:web_site_test/services/my_service.dart';

class MobileAppBar extends StatelessWidget {
  MyService _myService = MyService();
  MobileAppBar({Key? key}) : super(key: key);

  TextStyle textButtonStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white);
  TextStyle labelStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              _myService.scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu),
            color: Colors.white,
            iconSize: 29,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'SendIT Studios',
            style: labelStyle,
          ),
        ],
      ),
    );
  }
}
