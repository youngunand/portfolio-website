import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MobileJourneyPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  AutoSizeGroup timeLineGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: 2 * height,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 0.02*height,),
          Text(
            '3. My Journey',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: 0.8*width,
            child: Column(
              children: [
                TimelineTile(
                  isFirst: true,
                  alignment: TimelineAlign.center,
                  indicatorStyle: IndicatorStyle(
                      width: 30,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      color: Theme.of(context).focusColor),
                  afterLineStyle: LineStyle(color: Theme.of(context).shadowColor),
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
              beforeLineStyle: LineStyle(color: Theme.of(context).shadowColor),
              afterLineStyle: LineStyle(color: Theme.of(context).shadowColor),
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
              beforeLineStyle: LineStyle(color: Theme.of(context).shadowColor),
              afterLineStyle: LineStyle(color: Theme.of(context).shadowColor),
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
              beforeLineStyle: LineStyle(color: Theme.of(context).shadowColor),
              afterLineStyle: LineStyle(color: Theme.of(context).shadowColor),
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
                beforeLineStyle: LineStyle(color: Theme.of(context).shadowColor)),
              ],
            ),
          ),
          
          Container(
              width: double.infinity,
              child: AutoSizeText(
                      '''When I first started to code I felt lost. I did not know where to start and what language to learn. After some googling I started with Python. I did some small projects, but ended up learning Java properly, using the book "Head-First Java". I built some small nice projects with it - including a Fishing-Exam App. I actually used it when studying for the exam.
                    \nWhen I had finished this App, I really wanted to develop Apps for Mobile Devices. Therefore I started learning Flutter. In August of 2021 I started building my first big production App - Fish-Finder. I managed to relase it in the Google Play Store at the end of November.
                \nThis App also got me my first Junior Developer Job. I started working at MatheArena - a fast growing Ed-Tech Startup located in Austria. There I learned what its like to work in a team, on real world applications and to take responsibility. 
                ''',
                style: Theme.of(context).textTheme.bodyText1,
              ))
        ],
      ),
    );
  }
}
