import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const/link_url/link.dart';

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
                  fontSize: 20),
            ),
            onTap: () {
              launchUrl(
                Uri.parse(LinkSocial.urltelegram),
              );
            },
          ),
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
              launchUrl(
                Uri.parse(LinkSocial.urltwitter),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MouseRegion(
            cursor: MouseCursor.defer,
            onHover: (event) {},
            child: GestureDetector(
              child: Text(
                ("Github"),
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                launchUrl(
                  Uri.parse(
                    LinkSocial.urlgithub,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
