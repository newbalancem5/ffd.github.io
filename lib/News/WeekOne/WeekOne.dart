import 'package:ffd/News/WeekOne/Block_News.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsWeekOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Column(children: [
              Text(
                ("newsblock.week1.title"),
                textAlign: TextAlign.center,
                style: GoogleFonts.libreFranklin(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 25),
              ),
              Text(
                ("newsblock.week1.info"),
                textAlign: TextAlign.center,
                textScaleFactor: 1.0,
                style: GoogleFonts.robotoSlab(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 17),
              ),
              NewsBLockWeekOne(),
            ]),
          )
        ],
      ),
    );
  }
}
