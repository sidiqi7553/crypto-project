
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Common/FontTemplate.dart';
import '../Common/News_Template.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: AppFontTemplate(
              text: " Top Events",
              SizeofFont: 20,
            ),
            trailing: Icon(
              Icons.refresh,
              color: Colors.grey,
            ),
          ),

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
