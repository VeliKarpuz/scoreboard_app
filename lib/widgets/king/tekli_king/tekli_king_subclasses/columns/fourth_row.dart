// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/ceza.dart';
import '../game_type.dart';

class FourthRow extends StatelessWidget {
  FourthRow({
    super.key,
    required this.onTap,
  });

  GameType erkek = GameType(
    gameName: "ERKEK",
    queue: 3,
    onTap: () {},
  );

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        erkek = GameType(gameName: "ERKEK", queue: 3, onTap: onTap),
        Ceza(
          playerCoordinate: 1,
          gameCoordinate: 3,
          puan1: 0,
          puan2: 0,
          widget: erkek,
        ),
        Ceza(
          playerCoordinate: 2,
          gameCoordinate: 3,
          puan1: 0,
          puan2: 0,
          widget: erkek,
        ),
        Ceza(
          playerCoordinate: 3,
          gameCoordinate: 3,
          puan1: 0,
          puan2: 0,
          widget: erkek,
        ),
        Ceza(
          playerCoordinate: 4,
          gameCoordinate: 3,
          puan1: 0,
          puan2: 0,
          widget: erkek,
        ),
      ],
    );
  }
}
