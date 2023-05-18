import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/score_title.dart';

import '../toplam_puan.dart';

class TenthRow extends StatelessWidget {
  const TenthRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ScoreTitle(gameName: "TOPLAM KOZ"),
        ToplamPuan(puan: "0"),
        ToplamPuan(puan: "0"),
        ToplamPuan(puan: "0"),
        ToplamPuan(puan: "0"),
      ],
    );
  }
}
