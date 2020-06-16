import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PopupStyle {
  final Color color;
  final EdgeInsets padding;
  final TextStyle textStyle;
  final TextStyle textStyleTitle;
  final BorderRadius borderRadius;
  final ShapeBorder shape;
  final bool textOnly;
  final bool outline;
  final CrossAxisAlignment crossAxisAlignment;

  const PopupStyle({
    this.shape = const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
    this.textStyle,
    this.textStyleTitle,
    this.textOnly = false,
    this.color = Colors.green,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.padding = const EdgeInsets.only(top: 26),
    this.outline = false,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });
}

class Popup extends StatefulWidget {
  final String title;
  final String info;
  final PopupStyle style;
  final List<Widget> button;
  final Widget children;
  final Widget child;
  final String label;

  Popup(
      {this.label,
      this.child,
      this.title,
      this.info,
      this.button,
      this.children,
      this.style});

  @override
  _PopupState createState() => _PopupState();
}

class _PopupState extends State<Popup> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Size width = MediaQuery.of(context).size;
    final font = MediaQuery.of(context).textScaleFactor;
    return Container(
      height: size.height*0.9,
      width: size.width*0.4,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 40),
              child: Text(
                tr("price.title"),
                style: GoogleFonts.robotoSlab(
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontSize: font*20,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _popupContent(),
            ),
            Container(
              child: _buttonConnect(),
            )
          ]),
    );
  }

  Widget _popupContent() {
    final font = MediaQuery.of(context).textScaleFactor;
    return Container(
      alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top:20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                tr("price.info"),
                style: GoogleFonts.robotoSlab(
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontSize: font*20),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  child: Text(
                    tr("price.price1"),
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: font*14,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  child: Text(
                    tr("price.price2"),
                    style: GoogleFonts.robotoSlab(
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontSize: font*14,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
   
    );
  }

  Widget _buttonConnect(){
    return FlatButton(
        child: Text("Обратиться"),
        onPressed: (){
        launch("tg://resolve?domain=newbalancem5");
        },
      );
  }
}
