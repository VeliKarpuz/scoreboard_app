// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/batak/batak.dart';
import 'package:scoreboard_app/widgets/okey/okey.dart';
import 'package:scoreboard_app/widgets/satranc/satranc.dart';
import '../widgets/king/king.dart';

class MyCardList extends StatelessWidget {
  const MyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: Icon(Icons.games),
              title: Text(routes[index].toString()),
              onTap: () {
                navigatorPush(context, routes[index]);
              },
            ),
          ),
          itemCount: routes.length,
        ),
      ),
    );
  }
}

List<Widget> routes = [
  Batak(),
  King(),
  Okey(),
  Satranc(),
];
navigatorPush(context, Widget route) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => route,
    ),
  );
}
