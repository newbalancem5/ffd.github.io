// import 'package:ffd/HyperLink/SocialLink.dart';
import 'package:ffd/Screen/Price.dart';
import 'package:ffd/Screen/SocialBlock.dart';
import 'package:ffd/Screen/TitleBlock.dart';
import 'package:ffd/Screen/TitleInfo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [TitleBlock(), TitleInfo(), SocialBlock(),PriceAdb()],
    );
  }
}
