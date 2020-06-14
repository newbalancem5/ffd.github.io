import 'package:flutter/material.dart';



class PopupStyle{
  final Color color;
  final double width;
  final double height;
  final EdgeInsets padding;
  final TextStyle textStyle;
  final TextStyle textStyleTitle;
  final BorderRadius borderRadius;
  final ShapeBorder shape;
  final bool textOnly;
  final bool outline;
  final CrossAxisAlignment crossAxisAlignment;

  const PopupStyle({
    this.shape = const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
    this.textStyle,
    this.textStyleTitle,
    this.textOnly = false,
    this.color = Colors.green,
    this.width = 325,
    this.height = 260,
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

  Popup({
    this.label,
    this.child,
    this.title,
    this.info,
    this.button,
    this.children,
    this.style
  });




  @override
  _PopupState createState() => _PopupState();
}

class _PopupState extends State<Popup>  with SingleTickerProviderStateMixin {
  PopupStyle get _style => widget.style;
  @override
  Widget build(BuildContext context) {
    return 
      Column(
        mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: _popupContent(),
                ),
              ]);
  }



   Widget _popupContent() {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme.bodyText2;

    final textStyleTitle = textTheme
        .copyWith(
          fontSize: 22,
          fontWeight: FontWeight.w700,
        );

    final textStyleInfo = textTheme.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );

    return Container(
     height: 300,
     width: 300,
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        color: Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.zero,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('data'),
            Padding(padding: EdgeInsets.only(top: 20, left: 39, right: 39), child: Text('asd')),
          ],
        ),
      ),
    );
  }

}