import 'package:ffd/HyperLink/Link.dart';
import 'package:flutter/material.dart';

class SocialLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HyperLinks(
        nameLink: 'telegram',
        href: 'https://stackoverflow.com/',
      ),
    );
  }
}