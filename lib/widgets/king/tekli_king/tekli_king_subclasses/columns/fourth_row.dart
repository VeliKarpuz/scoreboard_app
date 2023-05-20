// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/ceza.dart';
import '../game_type.dart';

class FourthRow extends StatelessWidget {
  FourthRow({
    super.key,
    required this.oyuncu1puan5,
    required this.oyuncu2puan5,
    required this.oyuncu3puan5,
    required this.oyuncu4puan5,
    required this.oyuncu1puan6,
    required this.oyuncu2puan6,
    required this.oyuncu3puan6,
    required this.oyuncu4puan6,
    required this.onTap,
    required this.activatedCounter,
  });

  int oyuncu1puan5,
      oyuncu2puan5,
      oyuncu3puan5,
      oyuncu4puan5,
      oyuncu1puan6,
      oyuncu2puan6,
      oyuncu3puan6,
      oyuncu4puan6;

  GameType erkek = GameType(
      gameName: "ERKEK",
      queue: 3,
      onTap: () {},
      activatedCounter: 0,
      turnRed: 2);

  final VoidCallback onTap;
  final int activatedCounter;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        erkek = GameType(
            gameName: "ERKEK",
            queue: 3,
            onTap: onTap,
            activatedCounter: activatedCounter,
            turnRed: 2),
        Ceza(
          playerCoordinate: 1,
          gameCoordinate: 3,
          puan1: oyuncu1puan5,
          puan2: oyuncu1puan6,
          widget: erkek,
        ),
        Ceza(
          playerCoordinate: 2,
          gameCoordinate: 3,
          puan1: oyuncu2puan5,
          puan2: oyuncu2puan6,
          widget: erkek,
        ),
        Ceza(
          playerCoordinate: 3,
          gameCoordinate: 3,
          puan1: oyuncu3puan5,
          puan2: oyuncu3puan6,
          widget: erkek,
        ),
        Ceza(
          playerCoordinate: 4,
          gameCoordinate: 3,
          puan1: oyuncu4puan5,
          puan2: oyuncu4puan6,
          widget: erkek,
        ),
      ],
    );
  }
}
