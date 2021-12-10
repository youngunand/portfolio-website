import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_site_test/widgets/project_showcase_page/project_showcase_desktop.dart';

class DesktopProjectPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  AutoSizeGroup autoSizeGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: 0.7 * width,
          height: 0.9 * height,
          //color: Colors.lightGreen,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                      width: 572,
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.build_circle_outlined,
                        size: 500,
                        color: Theme.of(context).focusColor,
                      )),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '4. Projects',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 375,
                    height: 0.8 * height,
                    child: AutoSizeText(
                      '''After learning Java and following some tutorials, I managed to build the Fishing-Exam Application. The UI might not look great, but I am still proud of the App since I managed to build a Backend using Serialization.\n
While I was learning Flutter, my dad came up to me and asked me to develop an UI for a Rasperry-Pi Radio Project. He handed me a small Python script, which had some functionality but no UI. Since building an UI in Python is pretty similar to Java Swing, I built this out using Python.\n
When I finished this project, I shifted all my focus to Flutter. Unfortunately, I made the mistake of choosing a rather big project as my first one. But after four months of learning and working on it nearly every day, I finished it. \n
As I am still doing my Community Service, which is obligatory in Austria if you don't serve in the millitary, I built a small Counter-App as my next project.  ''',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 0.04*width),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProjectShowCase(
                          picturePaths: ['fish_finder_1.png', 'fish_finder_2.png', 'fish_finder_3.png', 'fish_finder_4.png', 'fish_finder_5.png'],
                          title: 'Fish-Finder',
                          gitHubUrl: 'https://github.com/youngunand/Fishing-App',
                          description:
                              'App for Fishermen, who want to track their catches.',
                          technologiesUsed: ['dart', 'firebase', 'flutter', 'git'],
                          googlePlayLinked: true,
                          googlePlayUrl:
                              'https://play.google.com/store/apps/details?id=com.sendit_studios.fishing_app',
                          autoSizeGroup: autoSizeGroup,
                        ),
                        ProjectShowCase(
                          picturePaths: ['zivi_counter.png'],
                          title: 'Zivi-Counter',
                          gitHubUrl: 'https://github.com/youngunand/Zivi-Counter',
                          description:
                              'App for Community service-making men in Austria, who want to know when they are finished.',
                          technologiesUsed: ['dart', 'flutter', 'git'],
                          autoSizeGroup: autoSizeGroup,
                        ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
