// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, must_be_immutable, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/batak/esli_batak.dart';
import 'package:scoreboard_app/widgets/batak/tekli_batak.dart';
import 'package:scoreboard_app/widgets/batak/uc_bes_sekiz.dart';
import 'package:scoreboard_app/widgets/my_card.dart';

import '../../const.dart';

class Batak extends StatelessWidget {
  const Batak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstNames.batak),
      ),
      body: Column(children: [
        Expanded(
            child: SizedBox(
          child: ListView.builder(
            itemBuilder: (context, index) => Card(
              child: ListTile(
                leading: Icon(Icons.gamepad_outlined),
                title: Text(batakOyunlari[index].toString()),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => batakOyunlari[index],
                      ));
                },
              ),
            ),
            itemCount: batakOyunlari.length,
          ),
        ))
      ]),
    );
  }
}

List<Widget> batakOyunlari = [
  TekliBatak(),
  EsliBatak(),
  UcBesSekiz(),
];
