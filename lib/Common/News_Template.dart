import 'package:flutter/material.dart';

import 'FontTemplate.dart';

class News_Template extends StatelessWidget {
  News_Template(
      {Key? key,
        required this.News_Text,
        required this.subtitle,
        required this.Time_Text
        ,required this.pngImage
      }
      )
      : super(key: key);
  String News_Text;
  String Time_Text;
  String subtitle;
  String pngImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery
          .of(context)
          .size
          .width,
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 0),
            )
          ],
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppFontTemplate(
                    text:
                    News_Text,
                    SizeofFont: 12,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      AppFontTemplate(
                        text: subtitle,
                        SizeofFont: 10,
                      ),
                      SizedBox(
                        width:
                        MediaQuery
                            .of(context)
                            .size
                            .width * 0.05,
                      ),
                      AppFontTemplate(
                          text: Time_Text, SizeofFont: 10)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28.0, right: 1),
              child: Image(
                image:
                AssetImage(pngImage),

                width: 130,
              ),
            )
          ],
        ),
      ),
    );
  }
}
