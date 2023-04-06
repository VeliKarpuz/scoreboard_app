import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/batak/esli_batak/esli_batak_oyun.dart';
import 'package:scoreboard_app/widgets/my_card.dart';
import 'package:scoreboard_app/widgets/my_text_form.dart';

class EsliBatak extends StatelessWidget {
  TextEditingController takim1 = TextEditingController(text: "Takım 1");
  TextEditingController takim2 = TextEditingController(text: "Takım 2");

  EsliBatak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.esliBatak),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              MyTextFormField(editing: takim1, playerName: "Takım 1"),
              MyTextFormField(editing: takim2, playerName: "Takım 2"),
              ElevatedButton(
                onPressed: () {
                  navigatorPush(
                    context,
                    EsliBatakOyun(takim1: takim1.text, takim2: takim2.text),
                  );
                },
                child: const Text(ConstNames.kaydet),
              )
            ],
          ),
        ),
      ),
    );
  }
}
