import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/batak/uc_bes_sekiz/uc_bes_sekiz_oyun.dart';
import 'package:scoreboard_app/widgets/common%20widgets/my_card_list.dart';
import 'package:scoreboard_app/widgets/common%20widgets/my_text_form.dart';

class UcBesSekiz extends StatelessWidget {
  TextEditingController oyuncu1 = TextEditingController(text: "Oyuncu 1");
  TextEditingController oyuncu2 = TextEditingController(text: "Oyuncu 2");
  TextEditingController oyuncu3 = TextEditingController(text: "Oyuncu 3");

  UcBesSekiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ConstNames.UcBesSekiz),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                MyTextFormField(editing: oyuncu1, playerName: "Oyuncu 1"),
                MyTextFormField(editing: oyuncu2, playerName: "Oyuncu 2"),
                MyTextFormField(editing: oyuncu3, playerName: "Oyuncu 3"),
                ElevatedButton(
                  onPressed: () {
                    navigatorPush(
                        context,
                        UcBesSekizOyun(
                          oyuncu1: oyuncu1.text,
                          oyuncu2: oyuncu2.text,
                          oyuncu3: oyuncu3.text,
                        ));
                  },
                  child: const Text(ConstNames.kaydet),
                )
              ],
            ),
          ),
        ));
  }
}
