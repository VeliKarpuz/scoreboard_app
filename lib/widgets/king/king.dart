import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';

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
      body: const Center(
        child: Text(ConstNames.tamamlanmadi),
      ),
    );
  }
}
