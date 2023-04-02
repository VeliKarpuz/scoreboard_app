// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

mixin MyTheme {
  ThemeData myTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 85, 49, 167),
      elevation: 10,
      centerTitle: true,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(30, 10),
        ),
      ),
    ),
    cardTheme: CardTheme(
      color: Color(0xffD1C4E9),
      elevation: 10,
      margin: EdgeInsets.all(10),
    ),
    primaryColor: Color(0xff512DA8),
    iconTheme: IconThemeData(
      color: Color(0xff512DA8),
      size: 24,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Color.fromARGB(255, 115, 84, 187),
    ),
  );
}
