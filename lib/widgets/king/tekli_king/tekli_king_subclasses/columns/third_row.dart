// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/ceza.dart';

import '../game_type.dart';

class ThirdRow extends StatelessWidget {
  ThirdRow({
    super.key,
    required this.onTap,
  });

  GameType kiz = GameType(
    gameName: "KIZ",
    queue: 2,
    onTap: () {},
  );
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kiz = GameType(gameName: "KIZ", queue: 2, onTap: onTap),
        Ceza(
          playerCoordinate: 1,
          gameCoordinate: 2,
          puan1: 0,
          puan2: 0,
          widget: kiz,
        ),
        Ceza(
          playerCoordinate: 2,
          gameCoordinate: 2,
          puan1: 0,
          puan2: 0,
          widget: kiz,
        ),
        Ceza(
          playerCoordinate: 3,
          gameCoordinate: 2,
          puan1: 0,
          puan2: 0,
          widget: kiz,
        ),
        Ceza(
          playerCoordinate: 4,
          gameCoordinate: 2,
          puan1: 0,
          puan2: 0,
          widget: kiz,
        ),
      ],
    );
  }
}
