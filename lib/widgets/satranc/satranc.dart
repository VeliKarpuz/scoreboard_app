import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';

class Satranc extends StatefulWidget {
  const Satranc({super.key});

  @override
  State<Satranc> createState() => _SatrancState();
}

class _SatrancState extends State<Satranc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.satranc),
      ),
      body: const Center(
        child: Text(ConstNames.tamamlanmadi),
      ),
    );
  }
}
