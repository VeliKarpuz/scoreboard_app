import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/game_type.dart';
import '../ceza.dart';

class SecondRow extends StatelessWidget {
  SecondRow({
    super.key,
  });

  GameType soniki = GameType(gameName: "SON İKİ", queue: 1);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        soniki,
        Ceza(
          widget: soniki,
          playerCoordinate: 1,
          gameCoordinate: 1,
          puan1: 0,
          puan2: 0,
        ),
        Ceza(
          widget: soniki,
          playerCoordinate: 2,
          gameCoordinate: 1,
          puan1: 0,
          puan2: 0,
        ),
        Ceza(
          widget: soniki,
          playerCoordinate: 3,
          gameCoordinate: 1,
          puan1: 0,
          puan2: 0,
        ),
        Ceza(
          widget: soniki,
          playerCoordinate: 4,
          gameCoordinate: 1,
          puan1: 0,
          puan2: 0,
        ),
      ],
    );
  }
}
