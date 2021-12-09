import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectShowCase extends StatelessWidget {
  double height = 1;
  double width = 1;

  String picturePath;
  String title;
  String description;
  String gitHubUrl;
  bool googlePlayLinked;
  bool horizontalPicture;
  List<String> technologiesUsed;
  ProjectShowCase(
      {required this.picturePath,
      required this.title,
      required this.description,
      required this.gitHubUrl,
      this.googlePlayLinked = false,
      this.horizontalPicture = false,
      required this.technologiesUsed});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      height: 0.8 * height,
      width: 0.5 * height,
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).shadowColor, width: 1),
          color: Theme.of(context).hintColor,
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 0.45 * height,
                child: Image.asset(picturePath),
              ),
              SizedBox(
                height: 0.05 * height,
              ),
              AutoSizeText(
                title,
                style: Theme.of(context).textTheme.overline,
              ),
              Divider(
                color: Colors.grey[800],
              ),
              AutoSizeText(
                description,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 0.1 * height,
              width: 0.4 * height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Divider(
                    color: Colors.grey[800],
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 0.05 * height,
                          width: 0.25 * height,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ListView.builder(
                                itemBuilder: (context, i) {
                                  return Container(
                                    height: 0.05 * height,
                                    width: 0.05 * height,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2),
                                    child: Image.asset(
                                      '${technologiesUsed[i]}.png',
                                    ),
                                  );
                                },
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: technologiesUsed.length,
                              )
                            ],
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.grey[800],
                        ),
                        SizedBox(
                          height: 0.05 * height,
                          width: 0.15 * height,
                          child: Row(
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color: Colors.blue, fontSize: 14),
                                    text: 'View on ',
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        final url =
                                            gitHubUrl;
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        }
                                      })
                              ])),
                              Image.asset(
                                'github.png',
                                height: 0.03 * height,
                                width: 0.03 * height,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
