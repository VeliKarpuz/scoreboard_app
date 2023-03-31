// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

mixin MyTheme {
  ThemeData myTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff512DA8),
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
    dividerColor: Color(0xffFF5722),
    iconTheme: IconThemeData(
      color: Color(0xff512DA8),
      size: 24,
    ),
  );
}
