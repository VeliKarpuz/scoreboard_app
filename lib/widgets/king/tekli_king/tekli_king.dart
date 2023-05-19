import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_card_list.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_text_form.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_oyun.dart';

class TekliKing extends StatelessWidget {
  TekliKing({super.key});

  final TextEditingController oyuncu1 =
      TextEditingController(text: ConstNames.oyuncu1);
  final TextEditingController oyuncu2 =
      TextEditingController(text: ConstNames.oyuncu2);
  final TextEditingController oyuncu3 =
      TextEditingController(text: ConstNames.oyuncu3);
  final TextEditingController oyuncu4 =
      TextEditingController(text: ConstNames.oyuncu4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.tekliKing),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyTextFormField(editing: oyuncu1, playerName: ConstNames.oyuncu1),
            MyTextFormField(editing: oyuncu2, playerName: ConstNames.oyuncu2),
            MyTextFormField(editing: oyuncu3, playerName: ConstNames.oyuncu3),
            MyTextFormField(editing: oyuncu4, playerName: ConstNames.oyuncu4),
            kaydetButton(context),
          ],
        ),
      ),
    );
  }

  ElevatedButton kaydetButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        navigatorPush(
            context,
            TekliKingOyun(
              player1: oyuncu1.text,
              player2: oyuncu2.text,
              player3: oyuncu3.text,
              player4: oyuncu4.text,
            ));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 123, 107, 160),
      ),
      child: const Text(ConstNames.kaydet),
    );
  }
}
