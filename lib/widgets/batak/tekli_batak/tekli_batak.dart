// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/batak/tekli_batak/tekli_batak_oyun.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_text_form.dart';

class TekliBatak extends StatefulWidget {
  const TekliBatak({super.key});

  @override
  State<TekliBatak> createState() => _TekliBatakState();
}

class _TekliBatakState extends State<TekliBatak> {
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
        title: Text(ConstNames.tekliBatak),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    MyTextFormField(
                        editing: oyuncu1, playerName: ConstNames.oyuncu1),
                    MyTextFormField(
                        editing: oyuncu2, playerName: ConstNames.oyuncu2),
                    MyTextFormField(
                        editing: oyuncu3, playerName: ConstNames.oyuncu3),
                    MyTextFormField(
                        editing: oyuncu4, playerName: ConstNames.oyuncu4),
                  ],
                ),
              ),
              kaydetButton(context)
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton kaydetButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TekliBatakOyun(
              oyuncu1: oyuncu1.text,
              oyuncu2: oyuncu2.text,
              oyuncu3: oyuncu3.text,
              oyuncu4: oyuncu4.text,
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 123, 107, 160),
      ),
      child: const Text(ConstNames.kaydet),
    );
  }
}
