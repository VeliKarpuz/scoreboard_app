import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/king/service/player_state.dart';
import 'package:scoreboard_app/widgets/king/service/service_locator.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king.dart';

class Player extends StatelessWidget {
  Player({
    required this.queue,
    required this.playerName,
    super.key,
  });
  final String playerName;
  final playerState = getIt.get<PlayerState>();
  final int queue;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: playerState.whichPlayerIsActive,
      builder: (context, value, child) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.077,
        width: MediaQuery.of(context).size.width * 0.2,
        child: AnimatedContainer(
          padding: ConstNames.kingOrtaObje,
          margin: ConstNames.kingUstObje,
          height: MediaQuery.of(context).size.height * 0.06,
          duration: ConstNames.kingDuration,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: value == queue
                ? ConstNames.green
                : ConstNames.satrancActiveColor,
          ),
          child: Center(
            child: Text(
              playerName,
              style: const TextStyle(color: ConstNames.white),
            ),
          ),
        ),
      ),
    );
  }
}
