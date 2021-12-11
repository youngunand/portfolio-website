import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopContactPage extends StatelessWidget {
  double height = 1;
  double width = 1;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      width: 0.9* width,
      height: 0.5 * height,
      padding: EdgeInsets.symmetric(horizontal: 0.05* width,vertical: 30),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 375,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          '5. Contact',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                        SizedBox(
                          height: 0.01 * height,
                        ),
                        AutoSizeText(
                          "If you have any questions, critique or just want to have an interesting conversation, don't hesitate to contact me. ",
                          style: Theme.of(context).textTheme.bodyText1,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 0.3 * width,
                    height: 0.4 * height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.email_outlined,
                              color: Theme.of(context).focusColor,
                              size: 50,
                            ),
                            SizedBox(width: 0.02*width,),
                            AutoSizeText(
                              'andreas.herzinger02@gmail.com',
                              style: Theme.of(context).textTheme.bodyText1,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 0.01 * height,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              'github.png',
                              height: 50,
                              width: 50,
                            ),
                            SizedBox(width: 0.02*width,),
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  style: Theme.of(context).textTheme.bodyText1,
                                  text: 'Check out my '),
                              TextSpan(
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                        color: Colors.blue,
                                      ),
                                  text: 'Github Repository ',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () async {
                                      final url = 'https://github.com/youngunand';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      }
                                    })
                            ])),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              
            ],
          ),
          Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                    SizedBox(width: 5,),
                    Icon(Icons.copyright_outlined, color: Theme.of(context).shadowColor,),
                    SizedBox(width: 5,),
                    Text('2021 Andreas Herzinger', style: Theme.of(context).textTheme.bodyText1,),
                    
                    
                  ],
                ),
              )
        ],
      ),
    );
  }
}
