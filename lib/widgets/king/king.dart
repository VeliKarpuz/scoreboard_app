import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';

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
        title: Text(ConstNames.king),
      ),
      body: Center(
        child: Text(ConstNames.tamamlanmadi),
      ),
    );
  }
}
