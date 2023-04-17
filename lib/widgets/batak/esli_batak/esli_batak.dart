import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/batak/esli_batak/esli_batak_oyun.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_card_list.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_text_form.dart';

class EsliBatak extends StatelessWidget {
  final TextEditingController takim1 =
      TextEditingController(text: ConstNames.takim1);
  final TextEditingController takim2 =
      TextEditingController(text: ConstNames.takim2);

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
              MyTextFormField(editing: takim1, playerName: ConstNames.takim1),
              MyTextFormField(editing: takim2, playerName: ConstNames.takim2),
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
