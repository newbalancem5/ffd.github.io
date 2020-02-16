// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/cupertino.dart';
// ignore: non_constant_identifier_names
Column Loader() {
  return Column( 
    children: __flatten([

      //-- BG ----------------------------------------------------------
      Container( // project://lib\Screen\Home\homeScreen.pug#2,2
        decoration: BoxDecoration( 
          color: Colors.blue,
        ),
      ),

      //-- NAVBAR ----------------------------------------------------------
      Container( // project://lib\Screen\Home\homeScreen.pug#4,2
        child: Column( 
          children: __flatten([
            Container( // project://lib\Screen\Home\homeScreen.pug#5,4
              alignment: Alignment.center,
            ),
            DefaultTextStyle.merge( 
              child: 
              //-- TITLELOGO ----------------------------------------------------------
              Container( // project://lib\Screen\Home\homeScreen.pug#6,4
                child: Text( 
                  'Flutter For Web',
                ),
              ),
              style: TextStyle( 
                fontSize: 25,
                color: Colors.yellow,
              ),
            )
          ]),
        ),
        decoration: BoxDecoration( 
          color: Colors.blue,
        ),
      ),
      Container( // project://lib\Screen\Home\homeScreen.pug#8,2
      )
    ]),
  );
}
// ignore: unused_element
__flatten(List list) {
  return List<Widget>.from(list.expand((item) {
    return item is Iterable ? item : [item as Widget];
  }));
}