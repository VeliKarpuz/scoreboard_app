import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/score_title.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/toplam_puan.dart';

class NinthRow extends StatelessWidget {
  const NinthRow(
      {super.key,
      required this.oyuncu1ceza,
      required this.oyuncu2ceza,
      required this.oyuncu3ceza,
      required this.oyuncu4ceza});

  final int oyuncu1ceza, oyuncu2ceza, oyuncu3ceza, oyuncu4ceza;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ScoreTitle(gameName: "TOPLAM CEZA"),
        ToplamPuan(puan: oyuncu1ceza.toString()),
        ToplamPuan(puan: oyuncu2ceza.toString()),
        ToplamPuan(puan: oyuncu3ceza.toString()),
        ToplamPuan(puan: oyuncu4ceza.toString()),
      ],
    );
  }
}
