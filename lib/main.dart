import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/deneme.dart';
import 'package:scoreboard_app/widgets/common%20widgets/my_card_list.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/satranc/satranc_oyun.dart';
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.title),
      ),
      body: Column(children: const [MyCardList()]),
    );
  }
}
