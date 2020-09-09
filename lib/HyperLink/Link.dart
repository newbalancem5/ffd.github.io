import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:html' as html;

class HyperLinks extends StatefulWidget {
  final String href;
  final String nameLink;
  final List<Widget> child;

  HyperLinks({
    this.href,
    this.child,
    this.nameLink,
  });

  @override
  _HyperLinksState createState() => _HyperLinksState();
}

class _HyperLinksState extends State<HyperLinks> {
  final url = html.window.open;

  @override
  Widget build(BuildContext context) {
    return Container(child: _linkButton());
  }

  Widget _linkButton() {
    return GestureDetector(
        child: _textLink(),
        onTap: () {
          url('', '23');
        });
  }

  Widget _textLink() {
    return Text(widget.nameLink,
        style: TextStyle(
            decoration: TextDecoration.none, color: Colors.blue, fontSize: 20));
  }

  Widget _href() {
    return Text(widget.href);
  }
}
