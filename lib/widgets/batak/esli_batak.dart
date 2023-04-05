import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';

class EsliBatak extends StatefulWidget {
  const EsliBatak({super.key});

  @override
  State<EsliBatak> createState() => _EsliBatakState();
}

class _EsliBatakState extends State<EsliBatak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.esliBatak),
      ),
      body: const Center(
        child: Text(ConstNames.tamamlanmadi),
      ),
    );
  }
}
