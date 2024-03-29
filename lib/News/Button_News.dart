import 'package:ffd/News/WeekOne/WeekOne.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      // padding: EdgeInsets.all(15),
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(18.0),
      //     side: BorderSide(color: Colors.blueAccent)),
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
