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
      height: 1.2 * height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    '''When I first started to code I felt lost. I did not know where to start and what language to learn. After some googling I started with Python. I did some tutorials, but ended up not knowing anything. 
                \nAfter that, I bought the book "Head First Java" and learned Java with it. After reading it, I started to build my own Desktop App using Java. It was very basic, but actually helped me studying for the Fishing-Exam.
                \nWhen I had finished this App, I really wanted to develop Apps for Mobile Devices. Therefore I started learning Flutter. In August I started building my first big production App - Fish-Finder. I managed to relase it in the Google Play Store at the end of November.
                ''',
                    style: Theme.of(context).textTheme.bodyText1,
                  ))
            ],
          ),
          Container(
            height: 1.2 *height,
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
                    'October 2020',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Started learning Java',
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
                    'February 2021',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Finished Fisher-Exam App',
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
                    'June 2021',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.end,
                  ),
                  endChild: Container(
                    height: 99,
                    child: AutoSizeText(
                      'Started learning Flutter',
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
                      'November 2021',
                      style: Theme.of(context).textTheme.bodyText2,
                      textAlign: TextAlign.end,
                    ),
                    endChild: Container(
                      height: 99,
                      child: AutoSizeText(
                        'Finished Fish-Finder App',
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
