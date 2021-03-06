import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [(
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/icon.png"),
                fit: BoxFit.cover,
              )),
            ),
            Container(
              child: Text(tr("navbar.title"),
                  style: GoogleFonts.libreFranklin(
                      decoration: TextDecoration.none,
                      fontSize: 30,
                      color: Colors.black)),
            ),
          ],
        ))
      ],
    );
  }
}
