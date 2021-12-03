import 'package:flutter/material.dart';
import 'package:web_site_test/widgets/about.dart';
import 'package:web_site_test/widgets/journey.dart';
import 'package:web_site_test/widgets/landing_page.dart';
import 'package:web_site_test/widgets/projects.dart';
import 'package:web_site_test/widgets/vision.dart';

import 'widgets/Appbar/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size screensize = Size(1, 1);

  @override
  Widget build(BuildContext context) {
    screensize = MediaQuery.of(context).size;
    return Scaffold(     
       appBar: PreferredSize(
        preferredSize: Size(screensize.width, 0.1 * screensize.height),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 0.01* screensize.height),
        child: ListView(
          children: [
            LandingPage(screensize.height * 0.89),
            AboutPage(screensize.height*0.89),
            JourneyPage(screensize.height * 0.89),
            ProjectPage(screensize.height * 0.89),
            VisionPage(screensize.height * 0.89)
          ],
        ),
      ),
    );
  }
}
