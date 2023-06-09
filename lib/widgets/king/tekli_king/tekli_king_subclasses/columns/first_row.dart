import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/player.dart';

import '../game_type.dart';

class FirstRow extends StatelessWidget {
  FirstRow(
      {super.key,
      required this.name1,
      required this.name2,
      required this.name3,
      required this.name4,
      required this.widget});
  final String name1, name2, name3, name4;
  final Widget widget;

  Player player1 = Player(queue: 1, playerName: "playerName");
  Player player2 = Player(queue: 1, playerName: "playerName");
  Player player3 = Player(queue: 1, playerName: "playerName");
  Player player4 = Player(queue: 1, playerName: "playerName");

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.077,
          width: MediaQuery.of(context).size.width * 0.2,
        ),
        player1 = Player(queue: 1, playerName: name1),
        player2 = Player(queue: 2, playerName: name2),
        player3 = Player(queue: 3, playerName: name3),
        player4 = Player(queue: 4, playerName: name4),
      ],
    );
  }
}
