import 'package:facebook_feeds/post.dart';
import 'package:facebook_feeds/story_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  List<StoryScreen> stories = [
    StoryScreen(imgPath: "assets/Images/wallpaperflare.com_wallpaper.png"),
    StoryScreen(
      imgPath: "assets/Images/Rectangle 7.png",
      flag: false,
      circularImgPath: "assets/Images/Eliipse_goat.png",
    ),
    StoryScreen(
        imgPath: "assets/Images/Rectangle 8.png",
        flag: false,
        circularImgPath: "assets/Images/Ellipse_messi.png"),
    StoryScreen(
        imgPath: "assets/Images/Rectangle 7.png",
        flag: false,
        circularImgPath: "assets/Images/Eliipse_goat.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          // margin: EdgeInsets.only(bottom: 30),
          alignment: Alignment.center,
          // color: Colors.red,
          height: MediaQuery.sizeOf(context).height * 0.1,
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Transform.scale(
                  scale: 0.8,
                  child: const CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/Images/wallpaperflare.com_wallpaper.png")),
                ),
                labelText: 'What\'s in Your Mind?',
                labelStyle: const TextStyle(color: Colors.grey),
                suffixIcon: Image.asset("assets/Images/Photos.png")),
          ),
        ),
        SizedBox(
          height: 178,
          child: ListView.builder(
              itemBuilder: (context, index) => stories[index],
              itemCount: 4,
              scrollDirection: Axis.horizontal),
        ),
        ...List.generate(5, (index) => Post())
      ],
    );
  }
}
