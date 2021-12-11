import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_site_test/widgets/project_showcase_page/project_showcase.dart';

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
          width: 0.9 * width,
          height: 0.4 * height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 572,/*child: Icon(Icons.build_circle_outlined, size: 160,color: Theme.of(context).focusColor,),*/),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 0.1*height,),
                  Text(
                    '4. Projects',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 375,
                    height: 0.2 * height,
                    child: AutoSizeText(
                      '''Below are some of my projects. If you want to see all of my projects, head over to my Github Repository.''',
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
                          duration: '4 months',
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
                              'App for "Zivildiener" in Austria, who want to know when their Zivildienst is done.',
                          duration: '3 days',
                          technologiesUsed: ['dart', 'flutter', 'git'],
                          autoSizeGroup: autoSizeGroup,
                        ),
                        ProjectShowCase(title: 'Raspy-Radio', description: 'App I built for my father as he wanted to have an UI for his Radio Project.',duration: '1 week', gitHubUrl: 'https://github.com/youngunand/Rasperry-Pi-Radio', technologiesUsed: ['python', 'rasperry_pi', 'git'], autoSizeGroup: autoSizeGroup, picturePaths: ['raspy_radio.png'])
                
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 0.15*height,)
      ],
    );
  }
}
