import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/score_title.dart';

import '../toplam_puan.dart';

class EleventhRow extends StatelessWidget {
  const EleventhRow(
      {super.key,
      required this.oyuncu1skor,
      required this.oyuncu2skor,
      required this.oyuncu3skor,
      required this.oyuncu4skor});

  final int oyuncu1skor, oyuncu2skor, oyuncu3skor, oyuncu4skor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ScoreTitle(gameName: "TOPLAM SKOR"),
        ToplamPuan(puan: oyuncu1skor.toString()),
        ToplamPuan(puan: oyuncu2skor.toString()),
        ToplamPuan(puan: oyuncu3skor.toString()),
        ToplamPuan(puan: oyuncu4skor.toString()),
      ],
    );
  }
}
