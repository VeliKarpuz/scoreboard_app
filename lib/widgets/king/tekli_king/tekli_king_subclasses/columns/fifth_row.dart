// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/ceza.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/game_type.dart';

class FifthRow extends StatelessWidget {
  FifthRow({
    super.key,
    required this.onTap,
  });

  GameType kupa = GameType(
    gameName: "KUPA",
    queue: 4,
    onTap: () {},
  );
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kupa = GameType(gameName: "KUPA", queue: 4, onTap: onTap),
        Ceza(
          playerCoordinate: 1,
          gameCoordinate: 4,
          puan1: 0,
          puan2: 0,
          widget: kupa,
        ),
        Ceza(
          playerCoordinate: 2,
          gameCoordinate: 4,
          puan1: 0,
          puan2: 0,
          widget: kupa,
        ),
        Ceza(
          playerCoordinate: 3,
          gameCoordinate: 4,
          puan1: 0,
          puan2: 0,
          widget: kupa,
        ),
        Ceza(
          playerCoordinate: 4,
          gameCoordinate: 4,
          puan1: 0,
          puan2: 0,
          widget: kupa,
        ),
      ],
    );
  }
}
