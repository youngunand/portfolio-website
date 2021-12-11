import 'package:flutter/material.dart';
import 'package:web_site_test/services/my_service.dart';
import 'package:web_site_test/widgets/project_page/project_page_desktop.dart';
import 'package:web_site_test/widgets/vision_page/vision_page_desktop.dart';

import 'about_page/about_page_desktop.dart';
import 'about_page/about_page_mobile.dart';
import 'journey_page/journey_page_desktop.dart';
import 'journey_page/journey_page_mobile.dart';
import 'landing_page/landing_page_desktop.dart';
import 'landing_page/landing_page_mobile.dart';
import 'project_page/project_page_mobile.dart';
import 'vision_page/vision_page_mobile.dart';

class BodyBuilder extends StatefulWidget {
  final double height;
  final double width;
  BodyBuilder(this.height, this.width);

  @override
  _BodyBuilderState createState() => _BodyBuilderState();
}

class _BodyBuilderState extends State<BodyBuilder> {
  MyService _myService = MyService();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Container(
          color: Theme.of(context).cardColor,
          child: ListView(
            controller: _myService.scrollController,
            children: [
              DesktopLandingPage(),
              DesktopAboutPage(),
              DesktopVisionPage(),
              DesktopJourneyPage(),
              DesktopProjectPage(),
            ],
          ),
        );
      } else {
        return Container(
          color: Theme.of(context).cardColor,
          child: ListView(
            controller: _myService.scrollController,
            children: [
              MobileLandingPage(),
              MobileAboutPage(),
              MobileVisionPage(),
              MobileJourneyPage(),
              MobileProjectPage(),
            ],
          ),
        );
      }
    });
  }
}
