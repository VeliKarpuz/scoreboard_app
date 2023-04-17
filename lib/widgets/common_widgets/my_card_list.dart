import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/batak/batak.dart';
import 'package:scoreboard_app/widgets/okey/okey.dart';
import 'package:scoreboard_app/widgets/satranc/satranc.dart';
import '../../const.dart';
import '../king/king.dart';

class MyCardList extends StatelessWidget {
  MyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: const Icon(Icons.games),
              title: Text(routeNames[index]),
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

  List<String> routeNames = [
    ConstNames.batak,
    ConstNames.king,
    ConstNames.okey,
    ConstNames.satranc,
  ];

  List<Widget> routes = [
    Batak(),
    const King(),
    const Okey(),
    Satranc(),
  ];
}

navigatorPush(context, Widget route) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => route,
    ),
  );
}
