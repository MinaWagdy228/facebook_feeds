import 'package:facebook_feeds/body.dart';
import 'package:flutter/material.dart';

class Feeds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
            appBar: AppBar(
                title: Image.asset("assets/Images/Facebook.png",
                    width: 120, height: 120),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/Images/Add.png")),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/Images/Search.png")),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/Images/Messenger.png"))
                ],
                bottom: const TabBar(tabs: [
                  ImageIcon(AssetImage("assets/Images/Home.png")),
                  ImageIcon(AssetImage("assets/Images/TV_Screen.png")),
                  ImageIcon(AssetImage("assets/Images/Store.png")),
                  ImageIcon(AssetImage("assets/Images/Profile.png")),
                  ImageIcon(AssetImage("assets/Images/Notification.png")),
                  CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/Images/wallpaperflare.com_wallpaper.png"))
                ])),
            body: Body()),
      ),
    );
  }
}
