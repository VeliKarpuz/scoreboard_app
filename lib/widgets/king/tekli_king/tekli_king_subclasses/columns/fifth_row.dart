// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/ceza.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/game_type.dart';

class FifthRow extends StatelessWidget {
  FifthRow({
    required this.oyuncu1puan7,
    required this.oyuncu2puan7,
    required this.oyuncu3puan7,
    required this.oyuncu4puan7,
    required this.oyuncu1puan8,
    required this.oyuncu2puan8,
    required this.oyuncu3puan8,
    required this.oyuncu4puan8,
    super.key,
    required this.onTap,
    required this.activatedCounter,
  });

  int oyuncu1puan7,
      oyuncu2puan7,
      oyuncu3puan7,
      oyuncu4puan7,
      oyuncu1puan8,
      oyuncu2puan8,
      oyuncu3puan8,
      oyuncu4puan8;

  GameType kupa = GameType(
      gameName: "KUPA",
      queue: 4,
      onTap: () {},
      activatedCounter: 0,
      turnRed: 2);
  final VoidCallback onTap;
  final int activatedCounter;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kupa = GameType(
            gameName: "KUPA",
            queue: 4,
            onTap: onTap,
            activatedCounter: activatedCounter,
            turnRed: 2),
        Ceza(
          playerCoordinate: 1,
          gameCoordinate: 4,
          puan1: oyuncu1puan7,
          puan2: oyuncu1puan8,
          widget: kupa,
        ),
        Ceza(
          playerCoordinate: 2,
          gameCoordinate: 4,
          puan1: oyuncu2puan7,
          puan2: oyuncu2puan8,
          widget: kupa,
        ),
        Ceza(
          playerCoordinate: 3,
          gameCoordinate: 4,
          puan1: oyuncu3puan7,
          puan2: oyuncu3puan8,
          widget: kupa,
        ),
        Ceza(
          playerCoordinate: 4,
          gameCoordinate: 4,
          puan1: oyuncu4puan7,
          puan2: oyuncu4puan8,
          widget: kupa,
        ),
      ],
    );
  }
}
