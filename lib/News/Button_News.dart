import 'package:easy_localization/easy_localization.dart';
import 'package:ffd/News/WeekOne/WeekOne.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.blueAccent)),
      child: Column(
        children: [
          Text(
            tr("newsblock.newsday.title"),
            style: GoogleFonts.robotoSlab(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 17),
          ),
          Text(
            tr("newsblock.newsday.info"),
            style: GoogleFonts.robotoSlab(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 17),
          ),
        ],
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewsWeekOne()));
      },
    );
  }
}
