import 'package:ffd/ShowDialog/Popup.dart';
import 'package:flutter/material.dart';

class PriceAdb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  FlatButton(
        child: Text("Close"),
        onPressed: (){
          showDialog(context: context,
          builder: (BuildContext context){
            return Dialog(
              child: Popup(),
            );
          },
          );
        },
      );
  }
}