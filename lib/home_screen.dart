import 'package:flutter/material.dart';
import 'package:web_site_test/services/my_service.dart';
import 'package:web_site_test/widgets/Appbar/mobile_drawer.dart';
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
  MyService _myService = MyService();
  Size screensize = Size(1, 1);

  @override
  Widget build(BuildContext context) {
    screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screensize.width, 0.1 * screensize.height),
        child: CustomAppBar(),
      ),
      key: _myService.scaffoldKey,
      drawer: MobileDrawer(),
      body: ListView(
        children: [
          LandingPage(screensize.height * 0.89),
          AboutPage(screensize.height * 0.89),
          JourneyPage(screensize.height * 0.89),
          ProjectPage(screensize.height * 0.89),
          VisionPage(screensize.height * 0.89)
        ],
      ),
    );
  }
}
