// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/ceza.dart';

import '../game_type.dart';

class ThirdRow extends StatelessWidget {
  ThirdRow({
    super.key,
    required this.oyuncu1puan3,
    required this.oyuncu2puan3,
    required this.oyuncu3puan3,
    required this.oyuncu4puan3,
    required this.oyuncu1puan4,
    required this.oyuncu2puan4,
    required this.oyuncu3puan4,
    required this.oyuncu4puan4,
    required this.onTap,
    required this.activatedCounter,
  });

  int oyuncu1puan3,
      oyuncu2puan3,
      oyuncu3puan3,
      oyuncu4puan3,
      oyuncu1puan4,
      oyuncu2puan4,
      oyuncu3puan4,
      oyuncu4puan4;

  GameType kiz = GameType(
      gameName: "KIZ", queue: 2, onTap: () {}, activatedCounter: 0, turnRed: 2);
  final VoidCallback onTap;
  final int activatedCounter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kiz = GameType(
            gameName: "KIZ",
            queue: 2,
            onTap: onTap,
            activatedCounter: activatedCounter,
            turnRed: 2),
        Ceza(
          playerCoordinate: 1,
          gameCoordinate: 2,
          puan1: oyuncu1puan3,
          puan2: oyuncu1puan4,
          widget: kiz,
        ),
        Ceza(
          playerCoordinate: 2,
          gameCoordinate: 2,
          puan1: oyuncu2puan3,
          puan2: oyuncu2puan4,
          widget: kiz,
        ),
        Ceza(
          playerCoordinate: 3,
          gameCoordinate: 2,
          puan1: oyuncu3puan3,
          puan2: oyuncu3puan4,
          widget: kiz,
        ),
        Ceza(
          playerCoordinate: 4,
          gameCoordinate: 2,
          puan1: oyuncu4puan3,
          puan2: oyuncu4puan4,
          widget: kiz,
        ),
      ],
    );
  }
}
