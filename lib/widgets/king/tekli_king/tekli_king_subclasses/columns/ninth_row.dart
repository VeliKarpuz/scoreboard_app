import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/score_title.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/toplam_puan.dart';

class NinthRow extends StatelessWidget {
  const NinthRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ScoreTitle(gameName: "TOPLAM CEZA"),
        ToplamPuan(puan: "0"),
        ToplamPuan(puan: "0"),
        ToplamPuan(puan: "0"),
        ToplamPuan(puan: "0"),
      ],
    );
  }
}
