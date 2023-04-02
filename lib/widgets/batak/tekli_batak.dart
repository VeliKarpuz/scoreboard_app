// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/batak/tekli_batak_oyun.dart';

class TekliBatak extends StatefulWidget {
  const TekliBatak({super.key});

  @override
  State<TekliBatak> createState() => _TekliBatakState();
}

class _TekliBatakState extends State<TekliBatak> {
  final TextEditingController oyuncu1 = TextEditingController();
  final TextEditingController oyuncu2 = TextEditingController();
  final TextEditingController oyuncu3 = TextEditingController();
  final TextEditingController oyuncu4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstNames.tekliBatak),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  MyTextFormField(editing: oyuncu1, playerName: "Oyuncu 1"),
                  MyTextFormField(editing: oyuncu2, playerName: "Oyuncu 2"),
                  MyTextFormField(editing: oyuncu3, playerName: "Oyuncu 3"),
                  MyTextFormField(editing: oyuncu4, playerName: "Oyuncu 4"),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TekliBatakOyun(oyuncu1: oyuncu1.text),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 123, 107, 160),
              ),
              child: const Text(ConstNames.kaydet),
            )
          ],
        ),
      ),
    );
  }
}

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key, required this.editing, required this.playerName});

  final TextEditingController editing;
  final String playerName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        controller: editing,
        decoration: InputDecoration(
          labelText: playerName,
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 5),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
