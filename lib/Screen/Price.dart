import 'package:ffd/ShowDialog/Popup.dart';
import 'package:ffd/ShowDialog/PopupPrice.dart';
import 'package:flutter/material.dart';

class PriceAdb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  FlatButton(
        child: Text("Реклама"),
        onPressed: (){
          showDialog(context: context,
          builder: (BuildContext context){
            return Dialog(
              child: PopupPrice(),
            );
          },
          );
        },
      );
  }
}