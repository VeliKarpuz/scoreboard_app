// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/koz_puan.dart';
import '../game_type.dart';

class EighthRow extends StatelessWidget {
  EighthRow({
    super.key,
  });

  GameType kozlar = GameType(gameName: "KOZLAR", queue: 7);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kozlar,
        KozPuan(
          playerCoordinate: 1,
          gameCoordinate: 7,
          puan1: 0,
          puan2: 0,
          puan3: 0,
          puan4: 0,
          puan5: 0,
          puan6: 0,
          puan7: 0,
          puan8: 0,
          widget: kozlar,
        ),
        KozPuan(
          playerCoordinate: 2,
          gameCoordinate: 7,
          puan1: 0,
          puan2: 0,
          puan3: 0,
          puan4: 0,
          puan5: 0,
          puan6: 0,
          puan7: 0,
          puan8: 0,
          widget: kozlar,
        ),
        KozPuan(
          playerCoordinate: 3,
          gameCoordinate: 7,
          puan1: 0,
          puan2: 0,
          puan3: 0,
          puan4: 0,
          puan5: 0,
          puan6: 0,
          puan7: 0,
          puan8: 0,
          widget: kozlar,
        ),
        KozPuan(
          playerCoordinate: 4,
          gameCoordinate: 7,
          puan1: 0,
          puan2: 0,
          puan3: 0,
          puan4: 0,
          puan5: 0,
          puan6: 0,
          puan7: 0,
          puan8: 0,
          widget: kozlar,
        ),
      ],
    );
  }
}
