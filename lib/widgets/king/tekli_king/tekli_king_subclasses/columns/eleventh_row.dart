import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/score_title.dart';

import '../toplam_puan.dart';

class EleventhRow extends StatelessWidget {
  const EleventhRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ScoreTitle(gameName: "TOPLAM SKOR"),
        ToplamPuan(puan: "0"),
        ToplamPuan(puan: "0"),
        ToplamPuan(puan: "0"),
        ToplamPuan(puan: "0"),
      ],
    );
  }
}
