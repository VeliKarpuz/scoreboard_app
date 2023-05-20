// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/game_type.dart';
import '../../../../const_names.dart';
import '../../service/game_type_state.dart';
import '../../service/player_state.dart';
import '../../service/service_locator.dart';

class KozPuan extends StatelessWidget {
  KozPuan({
    super.key,
    required this.playerCoordinate,
    required this.gameCoordinate,
    required this.puan1,
    required this.puan2,
    required this.puan3,
    required this.puan4,
    required this.puan5,
    required this.puan6,
    required this.puan7,
    required this.puan8,
    required this.widget,
  });

  int puan1;
  int puan2;
  int puan3;
  int puan4;
  int puan5;
  int puan6;
  int puan7;
  int puan8;
  final int playerCoordinate;
  final int gameCoordinate;
  final GameType widget;

  final gameTypeState = getIt.get<GameTypeState>();
  final playerState = getIt.get<PlayerState>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: playerState.whichPlayerIsActive,
      builder: (BuildContext context, int whichPlayer, Widget? child) {
        return ValueListenableBuilder(
          valueListenable: gameTypeState.whichGameIsActive,
          builder: (BuildContext context, int whichGame, Widget? child) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.077,
              width: MediaQuery.of(context).size.width * 0.2,
              child: AnimatedContainer(
                padding: ConstNames.kingOrtaObje,
                margin: ConstNames.kingOrtaObje,
                duration: ConstNames.kingDuration,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: widget.activatedCounter < 8
                      ? playerCoordinate == whichPlayer &&
                              gameCoordinate == whichGame
                          ? ConstNames.green
                          : ConstNames.orange
                      : ConstNames.red,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$puan1,",
                          style: const TextStyle(color: ConstNames.white),
                        ),
                        Text(
                          "$puan2,",
                          style: const TextStyle(color: ConstNames.white),
                        ),
                        Text(
                          "$puan3,",
                          style: const TextStyle(color: ConstNames.white),
                        ),
                        Text(
                          "$puan4",
                          style: const TextStyle(color: ConstNames.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$puan5,",
                          style: const TextStyle(color: ConstNames.white),
                        ),
                        Text(
                          "$puan6,",
                          style: const TextStyle(color: ConstNames.white),
                        ),
                        Text(
                          "$puan7,",
                          style: const TextStyle(color: ConstNames.white),
                        ),
                        Text(
                          "$puan8",
                          style: const TextStyle(color: ConstNames.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
