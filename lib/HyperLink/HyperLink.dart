import 'dart:html' as html;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';



class HyperLinkStyle{
  final Color color;
  final double width;
  final double height;
  final TextStyle textStyle;
  final TextStyle textStyleTitle;
  final BorderRadius borderRadius;
  final bool textOnly;
  final bool outline;

  const HyperLinkStyle({
    this.textStyle,
    this.textStyleTitle,
    this.textOnly = false,
    this.color = Colors.green,
    this.width = 325,
    this.height = 260,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.outline = false,
});
}

class HyperLink extends StatefulWidget {
  final String label;
  final Function action;
  final bool enabled;
  final bool waiting;
  final Widget child;
  final HyperLinkStyle style;
  final Widget children;

  HyperLink({
    this.label,
    this.action,
    this.style = const HyperLinkStyle(),
    this.enabled = true,
    this.waiting = false,
    this.child,
    this.children
  });

  @override
  _HyperLinkState createState() => _HyperLinkState();
}



class _HyperLinkState extends State<HyperLink> {
  HyperLinkStyle get _style => widget.style;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _style.width,
      width: _style.height,
      child: Padding(padding: EdgeInsets.all(10),
      child: Row(
        children: [
          
        ],
      ),
      )
    );
  }



  Widget _nameLink(TextStyle textStyle){
    
   if (widget.child != null) {
      return widget.child;
    } else {
      return Text(
        widget.label,
        style: textStyle,
      );
    }
}
// const twitterUrl = "https://twitter.com/FlutterForDev";

Widget _href(TextStyle textStyle){
  return   GestureDetector(
          child: Text(tr("info.github"),
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.blue,
                  fontSize: 20)),
          onTap: () {
            html.window.open('https://myracledesign.de/blog', 'MyracleDesign');
          });
}
}


