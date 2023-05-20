// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/game_type.dart';
import '../ceza.dart';

class SecondRow extends StatelessWidget {
  SecondRow({
    required this.oyuncu1Puan1,
    required this.oyuncu2Puan1,
    required this.oyuncu3Puan1,
    required this.oyuncu4Puan1,
    required this.oyuncu1Puan2,
    required this.oyuncu2Puan2,
    required this.oyuncu3Puan2,
    required this.oyuncu4Puan2,
    super.key,
    required this.onTap,
  });
  int oyuncu1Puan1,
      oyuncu2Puan1,
      oyuncu3Puan1,
      oyuncu4Puan1,
      oyuncu1Puan2,
      oyuncu2Puan2,
      oyuncu3Puan2,
      oyuncu4Puan2;

  GameType soniki = GameType(
    gameName: "SON İKİ",
    queue: 1,
    onTap: () {},
  );

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        soniki = GameType(gameName: "SON İKİ", queue: 1, onTap: onTap),
        Ceza(
          widget: soniki,
          playerCoordinate: 1,
          gameCoordinate: 1,
          puan1: oyuncu1Puan1,
          puan2: oyuncu1Puan2,
        ),
        Ceza(
          widget: soniki,
          playerCoordinate: 2,
          gameCoordinate: 1,
          puan1: oyuncu2Puan1,
          puan2: oyuncu2Puan2,
        ),
        Ceza(
          widget: soniki,
          playerCoordinate: 3,
          gameCoordinate: 1,
          puan1: oyuncu3Puan1,
          puan2: oyuncu3Puan2,
        ),
        Ceza(
          widget: soniki,
          playerCoordinate: 4,
          gameCoordinate: 1,
          puan1: oyuncu4Puan1,
          puan2: oyuncu4Puan2,
        ),
      ],
    );
  }
}
