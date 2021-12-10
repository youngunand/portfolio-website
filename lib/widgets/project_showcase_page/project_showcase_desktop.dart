import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectShowCase extends StatelessWidget {
  double height = 1;
  double width = 1;

  String title;
  String description;
  String gitHubUrl;
  String googlePlayUrl;
  bool googlePlayLinked;
  bool horizontalPicture;
  List<String> picturePaths;
  List<String> technologiesUsed;
  AutoSizeGroup autoSizeGroup;
  ProjectShowCase(
      {
      required this.title,
      required this.description,
      required this.gitHubUrl,
      this.googlePlayUrl = '',
      this.googlePlayLinked = false,
      this.horizontalPicture = false,
      required this.technologiesUsed, 
      required this.autoSizeGroup,
      required this.picturePaths,});

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      height: 0.8 * height,
      width: 0.5 * height,
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).shadowColor, width: 2),
          color: Theme.of(context).hintColor,
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.symmetric(
          horizontal: 0.02 * width, vertical: 0.02 * height),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 0.45*height,
                child: PageView.builder(itemBuilder: (context, i){
                  return Container(
                    child: Image.asset(picturePaths[i]),
                  );
                }, itemCount: picturePaths.length,),
              ),
                
              SizedBox(
                height: 0.05 * height,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 0.05 * height,
                  child: AutoSizeText(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .overline!
                        .copyWith(fontSize: 32),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[800],
              ),
              SizedBox(
                height: 0.07 * height,
                child: AutoSizeText(
                  description,
                  group: autoSizeGroup,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 0.11 * height,
              width: 0.5 * height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Divider(
                    color: Colors.grey[800],
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 0.05 * height,
                          width: 0.24 * height,
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
                        Row(
                          children: [
                            VerticalDivider(
                              color: Colors.grey[800],
                            ),
                            SizedBox(
                              height: 0.08 * height,
                              width: 0.12 * height,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText2!
                                                  .copyWith(
                                                      color: Colors.blue,
                                                      fontSize: 14),
                                              text: 'View on ',
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  final url = gitHubUrl;
                                                  if (await canLaunch(url)) {
                                                    await launch(url);
                                                  }
                                                })
                                        ])),
                                        Image.asset(
                                          'github.png',
                                          height: 0.025 * height,
                                          width: 0.025 * height,
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 0.0025*height,),
                                    googlePlayLinked == true
                                        ? Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              RichText(
                                                  text: TextSpan(children: [
                                                TextSpan(
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText2!
                                                        .copyWith(
                                                            color: Colors.blue,
                                                            fontSize: 14),
                                                    text: 'View on ',
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () async {
                                                            final url =
                                                                googlePlayUrl;
                                                            if (await canLaunch(
                                                                url)) {
                                                              await launch(url);
                                                            }
                                                          })
                                              ])),
                                              Image.asset(
                                                'google_play.png',
                                                height: 0.025 * height,
                                                width: 0.025 * height,
                                              )
                                            ],
                                          )
                                        : Row()
                                  ],
                                ),
                              ),
                            ),
                          ],
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
