import 'package:ffd/Screen/Home/homeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(WebSite());

class WebSite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pocast',
      debugShowCheckedModeBanner: false,
      home: Loader(),
    );
  }
}
