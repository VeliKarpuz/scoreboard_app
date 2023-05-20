import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/score_title.dart';

import '../toplam_puan.dart';

class TenthRow extends StatelessWidget {
  const TenthRow(
      {super.key,
      required this.oyuncu1koz,
      required this.oyuncu2koz,
      required this.oyuncu3koz,
      required this.oyuncu4koz});

  final int oyuncu1koz, oyuncu2koz, oyuncu3koz, oyuncu4koz;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ScoreTitle(gameName: "TOPLAM KOZ"),
        ToplamPuan(puan: oyuncu1koz.toString()),
        ToplamPuan(puan: oyuncu2koz.toString()),
        ToplamPuan(puan: oyuncu3koz.toString()),
        ToplamPuan(puan: oyuncu4koz.toString()),
      ],
    );
  }
}
