
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Common/FontTemplate.dart';
import '../Common/News_Template.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: AppFontTemplate(
              text: " Top News",
              SizeofFont: 20,
            ),
            trailing: Icon(
              Icons.refresh,
              color: Colors.grey,
            ),
          ),
          // Container(
          //   height: 120,
          //   width: MediaQuery.of(context).size.width,
          //   margin: EdgeInsets.symmetric(
          //     horizontal: 15,
          //     vertical: 10,
          //   ),
          //   decoration: BoxDecoration(
          //       color: Colors.white,
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.5),
          //           spreadRadius: 5,
          //           blurRadius: 4,
          //           offset: Offset(-2, 3),
          //         )
          //       ],
          //       borderRadius: BorderRadius.circular(10)),
          //   child: Padding(
          //     padding: const EdgeInsets.all(10.0),
          //     child: Row(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Expanded(
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               AppFontTemplate(
          //                 text:
          //                 "Solana have jumped by 40% over the last two days despite increased threat of hackers.",
          //                 SizeofFont: 16,
          //               ),
          //               SizedBox(
          //                 height: 12,
          //               ),
          //               Row(
          //                 children: [
          //                   AppFontTemplate(
          //                     text: "DEFI",
          //                     SizeofFont: 10,
          //                   ),
          //                   SizedBox(
          //                     width:
          //                     MediaQuery.of(context).size.width * 0.05,
          //                   ),
          //                   AppFontTemplate(
          //                       text: "Just Now", SizeofFont: 10)
          //                 ],
          //               )
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(bottom: 28.0,right: 1),
          //           child: Image(
          //             image:
          //             AssetImage("Assets/Home_images/Rectangle 40.png"),
          //
          //             width: 130,
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          News_Template(News_Text: "Solana have jumped by 40% over the last two days despite increased threat of hackers.",
              subtitle: "DEFI", Time_Text: "Just Now", pngImage: "Assets/Home_images/Rectangle 40.png"),
          News_Template(News_Text: "Solana have jumped by 40% over the last two days despite increased threat of hackers.",
              subtitle: "DEFI", Time_Text: "Just Now", pngImage: "Assets/Home_images/Rectangle 40.png"),
          News_Template(News_Text: "Solana have jumped by 40% over the last two days despite increased threat of hackers.",
              subtitle: "DEFI", Time_Text: "Just Now", pngImage: "Assets/Home_images/Rectangle 40.png"),
          News_Template(News_Text: "Solana have jumped by 40% over the last two days despite increased threat of hackers.",
              subtitle: "DEFI", Time_Text: "Just Now", pngImage: "Assets/Home_images/Rectangle 40.png"),
          News_Template(News_Text: "Solana have jumped by 40% over the last two days despite increased threat of hackers.",
              subtitle: "DEFI", Time_Text: "Just Now", pngImage: "Assets/Home_images/Rectangle 40.png"),
          News_Template(News_Text: "Solana have jumped by 40% over the last two days despite increased threat of hackers.",
              subtitle: "DEFI", Time_Text: "Just Now", pngImage: "Assets/Home_images/Rectangle 40.png"),

        ],
      ),
    );
  }
}
