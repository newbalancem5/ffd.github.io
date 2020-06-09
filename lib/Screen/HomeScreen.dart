import 'package:ffd/Screen/SocialBlock.dart';
import 'package:ffd/Screen/TitleBlock.dart';
import 'package:ffd/Screen/TitleInfo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [TitleBlock(), TitleInfo(), SocialBlock()],
      ),
    );
  }
}
