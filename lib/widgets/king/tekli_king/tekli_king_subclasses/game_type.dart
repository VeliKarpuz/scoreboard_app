import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/service/game_type_state.dart';
import 'package:scoreboard_app/widgets/king/service/service_locator.dart';

import '../../../../const_names.dart';

class GameType extends StatelessWidget {
  GameType({
    super.key,
    required this.gameName,
    required this.queue,
  });
  final String gameName;
  final int queue;
  int activatedCounter = 0;
  final gameTypeState = getIt.get<GameTypeState>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: gameTypeState.whichGameIsActive,
      builder: (context, value, child) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.077,
        width: MediaQuery.of(context).size.width * 0.2,
        child: InkWell(
          onTap: () {
            if (activatedCounter < 5) {
              gameTypeState.gameSelector(queue);
              activatedCounter++;
            }
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.all(3),
            duration: ConstNames.kingDuration,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: activatedCounter < 5
                  ? value == queue
                      ? ConstNames.green
                      : ConstNames.satrancActiveColor
                  : ConstNames.red,
            ),
            child: Center(
              child: Text(gameName, style: TextStyle(color: ConstNames.white)),
            ),
          ),
        ),
      ),
    );
  }
}
