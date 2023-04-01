// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/batak.dart';

class MyCard extends StatelessWidget {
  const MyCard({required this.gameName, required this.route, super.key});
  final String gameName;
  final Widget route;

  void navigatorPush(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.games),
        title: Text(gameName),
        onTap: () {},
      ),
    );
  }
}
