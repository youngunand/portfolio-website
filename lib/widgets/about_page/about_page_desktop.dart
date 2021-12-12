import 'package:flutter/material.dart';

class DesktopAboutPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Container(
      width: 0.7 * width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.15 * height,
              ),
              Text(
                '1. About me',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 375,
                  child: Text(
                    'Hey there! My name is Andreas Herzinger and I am a young Software Developer from Austria.\n\nSince I was a small child, I always had an interest in math and science. It was just a natural thing to me to explore how things work. From calculating the mass of a whole mountain (yes, a real mountain) to thinking about sizing continents on flat maps - my head was always trying to figure things out. \n\nAbout a year ago I picked up coding and started to grow a big interest in Technology and Computers. ',
                    style: Theme.of(context).textTheme.bodyText1,
                  ))
            ],
          ),
          Column(
            children: [
              SizedBox(height: 0.13*height,),
              Container(
                height: 597,
                width: 472,
                padding: EdgeInsets.all(40),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 498,
                        width: 363,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 5, color: Theme.of(context).focusColor),
                        ),
                      ),
                    ),
                    Container(
                         height: 498,
                        width: 363,
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          border: Border.all(
                              width: 5, color: Theme.of(context).focusColor),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Image.asset('assets/profile_picture.jpeg')),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
