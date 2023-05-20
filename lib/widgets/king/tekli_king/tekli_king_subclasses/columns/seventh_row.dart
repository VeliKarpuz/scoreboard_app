// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/ceza.dart';
import '../game_type.dart';

class SeventhRow extends StatelessWidget {
  SeventhRow({
    required this.oyuncu1puan11,
    required this.oyuncu2puan11,
    required this.oyuncu3puan11,
    required this.oyuncu4puan11,
    required this.oyuncu1puan12,
    required this.oyuncu2puan12,
    required this.oyuncu3puan12,
    required this.oyuncu4puan12,
    super.key,
    required this.onTap,
    required this.activatedCounter,
  });
  int oyuncu1puan11,
      oyuncu2puan11,
      oyuncu3puan11,
      oyuncu4puan11,
      oyuncu1puan12,
      oyuncu2puan12,
      oyuncu3puan12,
      oyuncu4puan12;

  GameType el = GameType(
      gameName: "EL", queue: 6, onTap: () {}, activatedCounter: 0, turnRed: 2);
  final VoidCallback onTap;
  final int activatedCounter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        el = GameType(
            gameName: "EL",
            queue: 6,
            onTap: onTap,
            activatedCounter: activatedCounter,
            turnRed: 2),
        Ceza(
          playerCoordinate: 1,
          gameCoordinate: 6,
          puan1: oyuncu1puan11,
          puan2: oyuncu1puan12,
          widget: el,
        ),
        Ceza(
          playerCoordinate: 2,
          gameCoordinate: 6,
          puan1: oyuncu2puan11,
          puan2: oyuncu2puan12,
          widget: el,
        ),
        Ceza(
          playerCoordinate: 3,
          gameCoordinate: 6,
          puan1: oyuncu3puan11,
          puan2: oyuncu3puan12,
          widget: el,
        ),
        Ceza(
          playerCoordinate: 4,
          gameCoordinate: 6,
          puan1: oyuncu4puan11,
          puan2: oyuncu4puan12,
          widget: el,
        ),
      ],
    );
  }
}
