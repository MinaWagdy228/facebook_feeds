import 'package:flutter/material.dart';

class StoryModel {
  String imgPath;
  bool flag;
  String circularImgPath;

  StoryModel(
      {required this.imgPath, this.flag = false, this.circularImgPath = ''});
}
