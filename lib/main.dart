import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_card_list.dart';
import 'package:scoreboard_app/const.dart';
import './theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget with MyTheme {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: const MyHomePage(),
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
      body: Column(
        children: [
          MyCardList(),
        ],
      ),
    );
  }
}
