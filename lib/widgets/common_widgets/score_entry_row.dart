import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/common_widgets/puan.dart';

class ScoreEntryRow extends StatelessWidget {
  const ScoreEntryRow({
    super.key,
    required this.puan,
    required this.oyuncu,
    required this.widget,
  });

  final Puan puan;
  final String oyuncu;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(oyuncu),
          SizedBox(
            child: puan,
          ),
        ],
      ),
    );
  }
}
