import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';

class Okey extends StatefulWidget {
  const Okey({super.key});

  @override
  State<Okey> createState() => _OkeyState();
}

class _OkeyState extends State<Okey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.okey),
      ),
      body: const Center(
        child: Text(ConstNames.tamamlanmadi),
      ),
    );
  }
}
