import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
  String imgPath;
  bool flag;
  String circularImgPath;
  StoryScreen(
      {required this.imgPath, this.flag = true, this.circularImgPath = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        color: Colors.white,
        width: 122,
        height: 178,
        child: () {
          if (flag) {
            return Stack(
              children: [
                Image.asset(
                  imgPath,
                  height: 119,
                  width: 112,
                ),
                Container(
                  width: 112,
                  height: 178,
                  alignment: Alignment.bottomCenter,
                  child: const Text(
                    "Create a\n\t\t Story",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 105, left: 47),
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Image.asset("assets/Images/Story_add.png"))
              ],
            );
          }
          return Stack(
            children: [
              Image.asset(
                imgPath,
                height: 178,
                width: 122,
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: CircleAvatar(
                      backgroundImage: AssetImage(circularImgPath)))
            ],
          );
        }());
  }
}
