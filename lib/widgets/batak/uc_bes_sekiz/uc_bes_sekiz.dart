import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/batak/uc_bes_sekiz/uc_bes_sekiz_oyun.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_card_list.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_text_form.dart';

class UcBesSekiz extends StatelessWidget {
  final TextEditingController oyuncu1 =
      TextEditingController(text: ConstNames.oyuncu1);
  final TextEditingController oyuncu2 =
      TextEditingController(text: ConstNames.oyuncu2);
  final TextEditingController oyuncu3 =
      TextEditingController(text: ConstNames.oyuncu3);

  UcBesSekiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(ConstNames.ucBesSekiz),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                MyTextFormField(
                  editing: oyuncu1,
                  playerName: ConstNames.oyuncu1,
                ),
                MyTextFormField(
                  editing: oyuncu2,
                  playerName: ConstNames.oyuncu2,
                ),
                MyTextFormField(
                  editing: oyuncu3,
                  playerName: ConstNames.oyuncu3,
                ),
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
