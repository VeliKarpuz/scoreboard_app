import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_card_list.dart';
import 'package:scoreboard_app/widgets/king/esli_king/esli_king.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king.dart';

class King extends StatefulWidget {
  const King({super.key});

  @override
  State<King> createState() => _KingState();
}

class _KingState extends State<King> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.king),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: kingOyunlari.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      kingOyunlariAd[index].toString(),
                    ),
                    leading: const Icon(Icons.gamepad_outlined),
                    onTap: () {
                      navigatorPush(context, kingOyunlari[index]);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> kingOyunlari = [
  TekliKing(),
  const EsliKing(),
];

List<String> kingOyunlariAd = ["Tekli King", "Eşli King"];
