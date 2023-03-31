// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({required this.gameName, super.key});
  final String gameName;

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
