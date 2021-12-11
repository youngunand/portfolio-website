import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MobileVisionPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      width: 0.9,
      height: 1.2 * height,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 0.02*height,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '2. Vision',
                style: Theme.of(context).textTheme.subtitle2,
                textAlign: TextAlign.start,
              ),
              Container(
              width: 100,
              decoration: BoxDecoration(
                  gradient: RadialGradient(colors: [
                Theme.of(context).focusColor,
                Theme.of(context).cardColor,
              ], radius: 0.4, center: Alignment(0, -0.22))),
              child: Icon(
                Icons.lightbulb_outline_rounded,
                size: 100,
                color: Theme.of(context).focusColor,
              )),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: width,
            child: AutoSizeText(
              '''To put it short: My Vision is to leave the world behind as a better place.\n
When I was about 10, I was already trying to figure out how it could be possible to end poverty and world hunger. Furthermore I thought about how it would be possible to connect people from different countries, cultures, etc.\n
These 2 thoughts stuck in my mind ever since they first came up, and I am trying to implement them in my private and in my working life.\n
I try to do that by doing what I love and what I am best at. I think a scientific mind with sharp coding skills will eventually result in innovation, therefore that's what I am trying to aquire.\n''',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),

        ],
      ),
    );
  }
}
