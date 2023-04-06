import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/batak/esli_batak/esli_batak.dart';
import 'package:scoreboard_app/widgets/batak/tekli_batak/tekli_batak.dart';
import 'package:scoreboard_app/widgets/batak/uc_bes_sekiz/uc_bes_sekiz.dart';
import '../../const.dart';

class Batak extends StatelessWidget {
  const Batak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.batak),
      ),
      body: Column(children: [
        Expanded(
            child: SizedBox(
          child: ListView.builder(
            itemBuilder: (context, index) => Card(
              child: ListTile(
                leading: const Icon(Icons.gamepad_outlined),
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
