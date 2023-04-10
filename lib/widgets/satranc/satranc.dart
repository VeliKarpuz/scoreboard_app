import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/common%20widgets/my_text_form.dart';

class Satranc extends StatelessWidget {
  final TextEditingController oyuncu1 = TextEditingController();
  final TextEditingController oyuncu2 = TextEditingController();

  Satranc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.satranc),
      ),
      body: Column(
        children: [
          MyTextFormField(editing: oyuncu1, playerName: "Oyuncu 1"),
          MyTextFormField(editing: oyuncu2, playerName: "Oyuncu 2"),
          ElevatedButton(
            onPressed: () {},
            child: const Text(ConstNames.kaydet),
          )
        ],
      ),
    );
  }
}
