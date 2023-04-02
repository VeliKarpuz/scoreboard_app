// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, must_be_immutable, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/batak/batak.dart';
import 'package:scoreboard_app/widgets/my_card.dart';
import 'package:scoreboard_app/const.dart';
import './theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget with MyTheme {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: MyHomePage(),
      title: ConstNames.title,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstNames.title),
      ),
      body: Column(children: [MyCardList()]),
    );
  }
}
