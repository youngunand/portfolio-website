import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DesktopAppBar extends StatelessWidget {
  DesktopAppBar({Key? key}) : super(key: key);

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
                    onPressed: () {},
                    child: Text(
                      'About',
                      style: Theme.of(context).textTheme.headline2,
                    )),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Vision',
                      style: Theme.of(context).textTheme.headline2,
                    )),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Journey',
                      style: Theme.of(context).textTheme.headline2,
                    )),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                    onPressed: () {},
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
