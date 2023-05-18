import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/ceza.dart';
import '../game_type.dart';

class SeventhRow extends StatelessWidget {
  SeventhRow({
    super.key,
  });

  GameType el = GameType(gameName: "EL", queue: 6);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        el,
        Ceza(
          playerCoordinate: 1,
          gameCoordinate: 6,
          puan1: 0,
          puan2: 0,
          widget: el,
        ),
        Ceza(
          playerCoordinate: 2,
          gameCoordinate: 6,
          puan1: 0,
          puan2: 0,
          widget: el,
        ),
        Ceza(
          playerCoordinate: 3,
          gameCoordinate: 6,
          puan1: 0,
          puan2: 0,
          widget: el,
        ),
        Ceza(
          playerCoordinate: 4,
          gameCoordinate: 6,
          puan1: 0,
          puan2: 0,
          widget: el,
        ),
      ],
    );
  }
}
