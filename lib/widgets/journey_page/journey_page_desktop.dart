import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DesktopJourneyPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  AutoSizeGroup timeLineGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      width: 0.7 * width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                '3. My Journey',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 375,
                  child: AutoSizeText(
                    '''When I first started to code I felt lost. I did not know where to start and what language to learn. After some googling I started with Python. I did some small projects, but ended up learning Java properly, using the book "Head-First Java". I built some small nice projects with it - including a Fishing-Exam App. I actually used it when studying for the exam.
                    \nWhen I had finished this App, I really wanted to develop Apps for Mobile Devices. Therefore I started learning Flutter. In August of 2021 I started building my first big production App - Fish-Finder. I managed to relase it in the Google Play Store at the end of November.
                \nThis App also got me my first Junior Developer Job. I started working at MatheArena - a fast growing Ed-Tech Startup located in Austria. There I learned what its like to work in a team, on real world applications and to take responsibility. 
                ''',
                    style: Theme.of(context).textTheme.bodyText1,
                  ))
            ],
          ),
          Container(
            height: height,
            width: 472,
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                ),
                TimelineTile(
                  isFirst: true,
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).focusColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  startChild: Text(
                    'Summer 2020',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Got interested into programming',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).focusColor),
                  startChild: Text(
                    'Winter 2021',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Learned Java and Flutter',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  beforeLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).focusColor),
                  startChild: Text(
                    'November 2021',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Finished and Released Fish-Finder',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  beforeLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                ),
                TimelineTile(
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).focusColor),
                  startChild: Text(
                    'February 2022',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Got first SE Job',
                      style: Theme.of(context).textTheme.bodyText1,
                      group: timeLineGroup,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  beforeLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                  afterLineStyle:
                      LineStyle(color: Theme.of(context).shadowColor),
                ),
                TimelineTile(
                    isLast: true,
                    alignment: TimelineAlign.center,
                    indicatorStyle: IndicatorStyle(
                        width: 30,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        color: Theme.of(context).focusColor),
                    startChild: Text(
                      'October 2022',
                      style: Theme.of(context).textTheme.bodyText2,
                      textAlign: TextAlign.end,
                    ),
                    endChild: Container(
                      height: 99,
                      child: AutoSizeText(
                        'Started studying CS',
                        style: Theme.of(context).textTheme.bodyText1,
                        group: timeLineGroup,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    beforeLineStyle:
                        LineStyle(color: Theme.of(context).shadowColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
