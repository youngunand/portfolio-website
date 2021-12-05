import 'package:auto_size_text/auto_size_text.dart';
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
      height: 0.8 * height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 0.15*height,),
              Text(
                '1. About me',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 370,
                child: Text('Hey there! My Name is Andi and I am a young Software Developer from Austria. Since I was a small child, I always had an interest in math and science. It was just a natural thing to me to explore how things work. From calculating the mass of a whole mountain (yes, a real mountain) to thinking about sizing continents on flat maps - my head was always trying to figure things out. \n \n About a year ago I took up coding and I started to grow a big interest in Technology and Computers. ', style: Theme.of(context).textTheme.bodyText1,))
              
            ],
          ),
          Container(
              height: 0.5 * height,
              width: 0.2 * width,
              decoration: BoxDecoration(
                  color: Theme.of(context).hoverColor,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              child: Image.asset('profile_picture.jpeg')),
        ],
      ),
    );
  }
}
