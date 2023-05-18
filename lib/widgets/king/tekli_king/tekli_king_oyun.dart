import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/king/service/player_state.dart';
import 'package:scoreboard_app/widgets/king/service/service_locator.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/eighth_row.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/eleventh_row.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/fifth_row.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/first_row.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/fourth_row.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/ninth_row.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/second_row.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/seventh_row.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/sixth_row.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/tenth_row.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tekli_king_subclasses/columns/third_row.dart';

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
          FirstRow(
            name1: widget.player1,
            name2: widget.player2,
            name3: widget.player3,
            name4: widget.player4,
            widget: widget,
          ),
          SecondRow(),
          ThirdRow(),
          FourthRow(),
          FifthRow(),
          SixthRow(),
          SeventhRow(),
          EighthRow(),
          NinthRow(),
          TenthRow(),
          EleventhRow(),
        ],
      ),
    );
  }
}
