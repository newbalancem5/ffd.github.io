import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlockNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(
        children: [
          Text(
            ("newsblock.newsday.title"),
            style: GoogleFonts.robotoSlab(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 17),
          ),
          Text(
            ("newsblock.newsday.info"),
            style: GoogleFonts.robotoSlab(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 17),
          )
        ],
      ),
    );
  }
}
