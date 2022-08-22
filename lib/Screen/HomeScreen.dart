import 'package:ffd/News/Button_News.dart';
import 'package:ffd/Screen/SocialBlock.dart';
import 'package:ffd/Screen/TitleBlock.dart';
import 'package:ffd/Screen/TitleInfo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TitleBlock(),
        TitleInfo(),
        SocialBlock(),
        ButtonNews(),
      ],
    );
  }
}
