import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_card_list.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_text_form.dart';
import 'package:scoreboard_app/widgets/deneme.dart';

class Satranc extends StatelessWidget {
  final TextEditingController oyuncu1 = TextEditingController(text: "Oyuncu1");
  final TextEditingController oyuncu2 = TextEditingController(text: "Oyuncu 2");

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
            onPressed: () {
              navigatorPush(context, Deneme(moveSeconds: 0));
            },
            child: const Text(ConstNames.kaydet),
          )
        ],
      ),
    );
  }
}
