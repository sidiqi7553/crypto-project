
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Common/AppColor.dart';
import '../Common/FontTemplate.dart';
import 'Events.dart';
import 'News.dart';

class News_and_Events extends StatefulWidget {
  const News_and_Events({Key? key}) : super(key: key);

  @override
  State<News_and_Events> createState() => _News_and_EventsState();
}

class _News_and_EventsState extends State<News_and_Events> {
  List<String> catagory = [
    "News",
    "Events",

  ];

  List<Widget> page = [
    News(),
    Events()
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: MediaQuery.of(context).size.width*0.25,
        title:AppFontTemplate(text: "News_and_Events", SizeofFont: 20,textcolor: Colors.black,),
      ),
      body: Column(

        children: [
          SizedBox(
            width: double.infinity,
            height: 70,
            child: ListView.builder(

                itemCount: catagory.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                  onTap: ()
                  {
                    setState(() {
                  current = index;
                    });
                    print(context);
                  },
                  child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  width:
                  MediaQuery.of(context).size.width *0.4,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.10),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      )
                    ],
                  color: current == index
                  ? HomeColor.Light
                  : Colors.white54,
                  borderRadius: current == index
                  ? BorderRadius.circular(10)
                  : BorderRadius.circular(10),
                  border: current == index
                  ? Border.all(
                  color: HomeColor.Light,
                  width: 2,
                  )
                  : Border.all(
                  color: HomeColor.Light,
                  width: 2,
                  ),
                  ),
                  child: Center(
                  child: AppFontTemplate(text: catagory[index],
                  SizeofFont: 17,
                  textcolor: current == index
                  ? Colors.white
                  : HomeColor.Light,
                  ),
                  ),
                  ),
                  );
                }),
          ),
          Container(
              height:MediaQuery.of(context).size.height* 0.8,child: page[current]),

        ],

      ),
    );
  }
}
