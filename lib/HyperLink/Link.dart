import 'package:flutter/material.dart';

class HyperLinks extends StatefulWidget {

  final String title;
  final List<Widget> button;




  HyperLinks({
    this.title,
    this.button,
  });

  @override
  _HyperLinksState createState() => _HyperLinksState();
}

class _HyperLinksState extends State<HyperLinks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _text(),
    );
  }

  Widget _text(){
    
  }

}