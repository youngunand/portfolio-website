import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MobileLandingPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    
    return Container(
      width: double.infinity,
      height: height,
      child: Center(
          child: Container(
              height: 0.5 * height,
              width: width*0.9,
               child: Column(
                children: [
                  AutoSizeText(
                    'Welcome',
                    style: Theme.of(context).textTheme.headline1,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  AutoSizeText(
                    'This website about me, trying to make the world a better place.',
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  )
                ],
              ))),
    );
  }
}
