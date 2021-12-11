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
        height: 3 * height,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 0.02 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '4. Projects',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            AutoSizeText(
              '''Below are some of my projects. If you want to see all of my projects, head over to my Github Repository.''',
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
                      'App for "Zivildiener" in Austria, who want to know when their Zivildienst is done.',
                  duration: '3 days',
                  technologiesUsed: ['dart', 'flutter', 'git'],
                  autoSizeGroup: autoSizeGroup,
                ),
                SizedBox(height: 0.05 * height),
                ProjectShowCase(
                    title: 'Raspy-Radio',
                    description:
                        'App I built for my father as he wanted to have an UI for his Radio Project.',
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
