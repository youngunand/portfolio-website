import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_site_test/widgets/project_showcase_page/project_showcase.dart';

class MobileProjectPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  AutoSizeGroup autoSizeGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
        width: 0.9 * width,
        height: 3.9 * height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 0.02*height,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '4. Projects',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Icon(
                  Icons.build_circle_outlined,
                  size: 100,
                  color: Theme.of(context).focusColor,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            AutoSizeText(
              '''After learning Java and following some tutorials, I managed to build the Fishing-Exam Application. The UI might not look great, but I am still proud of the App since I managed to build a Backend using Serialization.\n
While I was learning Flutter, my dad came up to me and asked me to develop an UI for a Rasperry-Pi Radio Project. He handed me a small Python script, which had some functionality but no UI. Since building an UI in Python is pretty similar to Java Swing, I built this out using Python.\n
When I finished this project, I shifted all my focus to Flutter. Unfortunately, I made the mistake of choosing a rather big project as my first one. But after four months of learning and working on it nearly every day, I finished it. \n
As I am still doing my Community Service, which is obligatory in Austria if you don't serve in the millitary, I built a small Counter-App as my next project.  ''',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 0.07 * height,
            ),
            Column(
              children: [
                ProjectShowCase(
                  picturePaths: [
                    'fish_finder_1.png',
                    'fish_finder_2.png',
                    'fish_finder_3.png',
                    'fish_finder_4.png',
                    'fish_finder_5.png'
                  ],
                  title: 'Fish-Finder',
                  gitHubUrl: 'https://github.com/youngunand/Fishing-App',
                  description:
                      'App for Fishermen, who want to track their catches.',
                  duration: '4 months',
                  technologiesUsed: ['dart', 'firebase', 'flutter', 'git'],
                  googlePlayLinked: true,
                  googlePlayUrl:
                      'https://play.google.com/store/apps/details?id=com.sendit_studios.fishing_app',
                  autoSizeGroup: autoSizeGroup,
                ),
                SizedBox(height: 0.05 * height),
                ProjectShowCase(
                  picturePaths: ['zivi_counter.png'],
                  title: 'Zivi-Counter',
                  gitHubUrl: 'https://github.com/youngunand/Zivi-Counter',
                  description:
                      'App for Community service-making men in Austria, who want to know when they are finished.',
                  duration: '3 days',
                  technologiesUsed: ['dart', 'flutter', 'git'],
                  autoSizeGroup: autoSizeGroup,
                ),
                SizedBox(height: 0.05 * height),
                ProjectShowCase(
                    title: 'Raspy-Radio',
                    description:
                        'App I built for my father, he wanted to have an UI for his Radio Project.',
                    duration: '1 week',
                    gitHubUrl:
                        'https://github.com/youngunand/Rasperry-Pi-Radio',
                    technologiesUsed: ['python', 'rasperry_pi', 'git'],
                    autoSizeGroup: autoSizeGroup,
                    picturePaths: ['raspy_radio.png']),
              ],
            ),
          ],
        ));
  }
}
