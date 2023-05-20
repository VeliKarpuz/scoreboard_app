// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/king/service/game_type_state.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/player.dart';

import '../../../service/player_state.dart';
import '../../../service/service_locator.dart';

class FirstRow extends StatelessWidget {
  FirstRow(
      {super.key,
      required this.name1,
      required this.name2,
      required this.name3,
      required this.name4,
      required this.widget,
      required this.onTap});
  final String name1, name2, name3, name4;
  final Widget widget;
  final VoidCallback onTap;

  Player player1 = Player(queue: 1, playerName: "playerName");
  Player player2 = Player(queue: 1, playerName: "playerName");
  Player player3 = Player(queue: 1, playerName: "playerName");
  Player player4 = Player(queue: 1, playerName: "playerName");

  final playerState = getIt.get<PlayerState>();
  final gameTypeState = getIt.get<GameTypeState>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder(
          valueListenable: gameTypeState.gameChoosing,
          builder: (context, gameChoosing, child) => ValueListenableBuilder(
            valueListenable: gameTypeState.whichGameIsActive,
            builder: (
              context,
              whichGameIsActive,
              childd,
            ) =>
                ValueListenableBuilder(
              valueListenable: playerState.whichPlayerIsActive,
              builder: (
                context,
                whichPlayerIsActive,
                child,
              ) =>
                  SizedBox(
                height: MediaQuery.of(context).size.height * 0.077,
                width: MediaQuery.of(context).size.width * 0.2,
                child: InkWell(
                  onTap: onTap,
                  splashColor: Colors.grey,
                  child: Container(
                    margin: ConstNames.kingUstObje,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Center(
                      child: Text("DEVAM"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        player1 = Player(queue: 1, playerName: name1),
        player2 = Player(queue: 2, playerName: name2),
        player3 = Player(queue: 3, playerName: name3),
        player4 = Player(queue: 4, playerName: name4),
      ],
    );
  }
}
