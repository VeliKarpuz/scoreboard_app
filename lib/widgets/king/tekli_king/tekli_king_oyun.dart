import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/king/service/player_state.dart';
import 'package:scoreboard_app/widgets/king/service/service_locator.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/game_type.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/player.dart';

class TekliKingOyun extends StatefulWidget {
  TekliKingOyun(
      {super.key,
      required this.player1,
      required this.player2,
      required this.player3,
      required this.player4});
  final String player1, player2, player3, player4;

  @override
  State<TekliKingOyun> createState() => _TekliKingOyunState();
}

class _TekliKingOyunState extends State<TekliKingOyun> {
  final playerState = getIt.get<PlayerState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Player(queue: 1, playerName: widget.player1),
              Player(queue: 2, playerName: widget.player2),
              Player(queue: 3, playerName: widget.player3),
              Player(queue: 4, playerName: widget.player4),
              Player(queue: 4, playerName: widget.player4),
            ],
          ),
          GameType(gameName: "SON İKİ", queue: 1),
          GameType(gameName: "KIZ", queue: 2),
          GameType(gameName: "ERKEK", queue: 3),
          GameType(gameName: "KUPA", queue: 4),
          GameType(gameName: "RIFKI", queue: 5),
          GameType(gameName: "EL", queue: 6),
          GameType(gameName: "KOZLAR", queue: 7),
          ElevatedButton(
              onPressed: () {
                playerState.nextPlayer();
              },
              child: Text("ssasas"))
        ],
      ),
    );
  }
}
