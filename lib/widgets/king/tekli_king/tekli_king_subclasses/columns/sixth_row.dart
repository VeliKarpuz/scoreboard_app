// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/ceza.dart';
import '../game_type.dart';

class SixthRow extends StatelessWidget {
  SixthRow({
    required this.oyuncu1puan9,
    required this.oyuncu2puan9,
    required this.oyuncu3puan9,
    required this.oyuncu4puan9,
    required this.oyuncu1puan10,
    required this.oyuncu2puan10,
    required this.oyuncu3puan10,
    required this.oyuncu4puan10,
    super.key,
    required this.onTap,
    required this.activatedCounter,
  });

  int oyuncu1puan9,
      oyuncu2puan9,
      oyuncu3puan9,
      oyuncu4puan9,
      oyuncu1puan10,
      oyuncu2puan10,
      oyuncu3puan10,
      oyuncu4puan10;

  GameType rifki = GameType(
      gameName: "RIFKI",
      queue: 5,
      onTap: () {},
      activatedCounter: 0,
      turnRed: 2);
  final int activatedCounter;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        rifki = GameType(
            gameName: "RIFKI",
            queue: 5,
            onTap: onTap,
            activatedCounter: activatedCounter,
            turnRed: 2),
        Ceza(
          playerCoordinate: 1,
          gameCoordinate: 5,
          puan1: oyuncu1puan9,
          puan2: oyuncu1puan10,
          widget: rifki,
        ),
        Ceza(
          playerCoordinate: 2,
          gameCoordinate: 5,
          puan1: oyuncu2puan9,
          puan2: oyuncu2puan10,
          widget: rifki,
        ),
        Ceza(
          playerCoordinate: 3,
          gameCoordinate: 5,
          puan1: oyuncu3puan9,
          puan2: oyuncu3puan10,
          widget: rifki,
        ),
        Ceza(
          playerCoordinate: 4,
          gameCoordinate: 5,
          puan1: oyuncu4puan9,
          puan2: oyuncu4puan10,
          widget: rifki,
        ),
      ],
    );
  }
}
