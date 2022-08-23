import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsBLockWeekOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30, left: 30),
            alignment: Alignment.topLeft,
            child: Text(
              "Новости",
              style: GoogleFonts.alata(
                color: Colors.black,
                fontStyle: FontStyle.normal,
                fontSize: 17,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 50),
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Text(
                  ("newsblock.week1.news1.title"),
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontSize: 17,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
