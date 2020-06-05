import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Text(
            tr("info.title"),
            style: GoogleFonts.abel(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontSize: 20,
              decoration: TextDecoration.none,
            ), textAlign: TextAlign.center,
          )
        )
      ],
    );
  }
}