import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
              child: Text(
                ("Telegram"),
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.blue,
                    fontSize: 20)),
            onTap: () {
              launch("tg://resolve?domain=flutterdevru");
            }),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
              child: Text(
                ("Twitter"),
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.blue,
                    fontSize: 20),
              ),
              onTap: () {
                Uri.parse("https://twitter.com/FlutterForDev");
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MouseRegion(
            onHover: (event) {},
            child: GestureDetector(
              child: Text(
                ("Github"),
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.blue,
                    fontSize: 20),
              ),
              onTap: () {
                
                launchUrl(Uri());
              })
        ),
      ),
        ),
      ],
    );
  }
}
