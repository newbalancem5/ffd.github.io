import 'package:easy_localization/easy_localization.dart';
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
            child: Text(tr("info.telegram"),
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
            child: Text(tr("info.twitter"),
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.blue,
                    fontSize: 20)),
            onTap: () {
              launch("https://twitter.com/FlutterForDev");
            }),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: MouseRegion(
                  child: GestureDetector(
              child: Text(tr("info.github"),
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.blue,
                      fontSize: 20)),
              onTap: () {
                launch("https://github.com/newbalancem5/flutter_info");
              }),
        ),
      ),
    ]);
  }
}
