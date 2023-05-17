import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/service/game_type_state.dart';
import 'package:scoreboard_app/widgets/king/service/service_locator.dart';

class GameType extends StatelessWidget {
  GameType({
    super.key,
    required this.gameName,
    required this.queue,
  });
  final String gameName;
  final int queue;
  final gameTypeState = getIt.get<GameTypeState>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: gameTypeState.whichGameIsActive,
      builder: (context, value, child) => AnimatedContainer(
        padding: EdgeInsets.all(3),
        margin: EdgeInsets.all(3),
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.17,
        duration: const Duration(milliseconds: 750),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: value == queue ? Colors.red : Colors.blue,
        ),
        child: Center(
          child: Text(gameName, style: Theme.of(context).textTheme.bodyLarge),
        ),
      ),
    );
  }
}
