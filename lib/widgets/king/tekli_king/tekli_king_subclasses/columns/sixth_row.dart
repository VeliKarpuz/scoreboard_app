// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/ceza.dart';
import '../game_type.dart';

class SixthRow extends StatelessWidget {
  SixthRow({
    super.key,
    required this.onTap,
  });

  GameType rifki = GameType(
    gameName: "RIFKI",
    queue: 5,
    onTap: () {},
  );
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        rifki = GameType(gameName: "RIFKI", queue: 5, onTap: onTap),
        Ceza(
          playerCoordinate: 1,
          gameCoordinate: 5,
          puan1: 0,
          puan2: 0,
          widget: rifki,
        ),
        Ceza(
          playerCoordinate: 2,
          gameCoordinate: 5,
          puan1: 0,
          puan2: 0,
          widget: rifki,
        ),
        Ceza(
          playerCoordinate: 3,
          gameCoordinate: 5,
          puan1: 0,
          puan2: 0,
          widget: rifki,
        ),
        Ceza(
          playerCoordinate: 4,
          gameCoordinate: 5,
          puan1: 0,
          puan2: 0,
          widget: rifki,
        ),
      ],
    );
  }
}
