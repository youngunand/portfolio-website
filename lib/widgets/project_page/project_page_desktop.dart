import 'package:flutter/material.dart';

class DesktopProjectPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      width: 0.7 * width,
      height: 0.9* height,
      //color: Colors.lightGreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              Container(
                width: 572,
                padding: EdgeInsets.all(20),
                child: Icon(Icons.build_circle_outlined, size: 500,color: Theme.of(context).focusColor,)
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('4. Projects', style: Theme.of(context).textTheme.subtitle2,),
              SizedBox(height: 10,),
              SizedBox(width: 375,
              child: Text('''After learning Java and following some tutorials, I managed to build the Fishing-Exam Application. The UI might not look great, but I am still proud of the App since I managed to build a Backend using Serialization.\n
While I was learning Flutter, my dad came up to me and asked me to develop an UI for a Rasperry-Pi Radio Project. He handed me a small Python script, which had some functionality but no UI. Since building an UI in Python is pretty similar to Java Swing, I built this out using Python.\n
When I finished this project, I shifted all my focus to Flutter. Unfortunately, I made the mistake of choosing a rather big project as my first one. But after four months of learning and working on it nearly every day, I finished it. \n
As I am still doing my Community Service, which is obligatory in Austria if you don't serve in the millitary, I built a small Counter-App as my next project.  ''', style: Theme.of(context).textTheme.bodyText1,),)
            ],
          ),
        ],
      ),
    );
  }
}
