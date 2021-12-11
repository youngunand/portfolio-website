import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_site_test/services/my_service.dart';

class DesktopAppBar extends StatelessWidget {
  DesktopAppBar({Key? key}) : super(key: key);
  double height = 1;
  double width = 1;

  MyService _myService = MyService();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Theme.of(context).cardColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: AutoSizeText(
                  'Andreas Herzinger',
                  style: Theme.of(context).textTheme.caption,
                )),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      _myService.scrollController
                          .animateTo(height, duration: Duration(milliseconds: 1200), curve: Curves.ease);
                    },
                    child: Text(
                      'About',
                      style: Theme.of(context).textTheme.headline2,
                    )),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    onPressed: () {
                       _myService.scrollController
                          .animateTo(2*height, duration: Duration(milliseconds: 1200), curve: Curves.ease);
                    },
                    child: Text(
                      'Vision',
                      style: Theme.of(context).textTheme.headline2,
                    )),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    onPressed: () {
                      _myService.scrollController
                          .animateTo(3*height, duration: Duration(milliseconds: 1200), curve: Curves.ease);
                    },
                    child: Text(
                      'Journey',
                      style: Theme.of(context).textTheme.headline2,
                    )),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    onPressed: () {
                     _myService.scrollController
                          .animateTo(4*height, duration: Duration(milliseconds: 1200), curve: Curves.ease);
                    },
                    child: Text(
                      'Projects',
                      style: Theme.of(context).textTheme.headline2,
                    )),
                SizedBox(
                  width: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
