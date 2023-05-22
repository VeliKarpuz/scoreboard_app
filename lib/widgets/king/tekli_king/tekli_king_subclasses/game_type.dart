// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/service/game_type_state.dart';
import 'package:scoreboard_app/widgets/king/service/service_locator.dart';

import '../../../../const_names.dart';

class GameType extends StatelessWidget {
  GameType({
    super.key,
    required this.gameName,
    required this.queue,
    required this.onTap,
    required this.activatedCounter,
    required this.turnRed,
    required this.player1counter,
    required this.player2counter,
    required this.player3counter,
    required this.player4counter,
  });
  final String gameName;
  final int queue;
  final int activatedCounter;
  final VoidCallback onTap;
  final int turnRed;
  int player1counter, player2counter, player3counter, player4counter;

  final gameTypeState = getIt.get<GameTypeState>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: gameTypeState.gameChoosing,
      builder: (
        context,
        gameChoosing,
        _,
      ) =>
          ValueListenableBuilder(
        valueListenable: gameTypeState.whichGameIsActive,
        builder: (
          context,
          whichGameIsActive,
          child,
        ) =>
            SizedBox(
          height: MediaQuery.of(context).size.height * 0.077,
          width: MediaQuery.of(context).size.width * 0.2,
          child: InkWell(
            onTap: onTap,
            child: AnimatedContainer(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.all(3),
              duration: ConstNames.kingDuration,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: activatedCounter < turnRed
                    ? whichGameIsActive < 1
                        ? ConstNames.green
                        : whichGameIsActive == queue
                            ? ConstNames.green
                            : ConstNames.satrancActiveColor
                    : ConstNames.red,
              ),
              child: Center(
                child: Text(
                  gameName,
                  style: const TextStyle(color: ConstNames.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
