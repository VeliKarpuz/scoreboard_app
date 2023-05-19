import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/common_widgets/puan.dart';
import 'package:scoreboard_app/widgets/common_widgets/score_entry_row.dart';
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
import '../service/game_type_state.dart';

class TekliKingOyun extends StatefulWidget {
  const TekliKingOyun(
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
  final gameTypeState = getIt.get<GameTypeState>();
  final playerState = getIt.get<PlayerState>();
  final Puan puan1 = Puan(minScore: 1);
  final Puan puan2 = Puan(minScore: 1);
  final Puan puan3 = Puan(minScore: 1);
  final Puan puan4 = Puan(minScore: 1);
  void devamFunction() {
    playerState.whichPlayerIsActive.value > 0 &&
            gameTypeState.whichGameIsActive.value > 0
        ? showModalBottomSheet(
            context: context,
            builder: (context) {
              return ValueListenableBuilder(
                valueListenable: gameTypeState.whichGameIsActive,
                builder: (BuildContext context, int whichGameIsActive,
                    Widget? child) {
                  return SizedBox(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "OYUN TÜRÜ: ${bottomSheetTitle()}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        ScoreEntryRow(
                          puan: puan1,
                          oyuncu: widget.player1,
                          widget: widget,
                        ),
                        ScoreEntryRow(
                          puan: puan2,
                          oyuncu: widget.player2,
                          widget: widget,
                        ),
                        ScoreEntryRow(
                          puan: puan3,
                          oyuncu: widget.player3,
                          widget: widget,
                        ),
                        ScoreEntryRow(
                          puan: puan4,
                          oyuncu: widget.player4,
                          widget: widget,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: const Text(ConstNames.kaydet),
                        )
                      ],
                    ),
                  );
                },
              );
            },
          )
        : null;
  }

  String bottomSheetTitle() {
    switch (gameTypeState.whichGameIsActive.value) {
      case 0:
        return "OYUN SEÇİNİZ";
      case 1:
        return "SON İKİ";
      case 2:
        return "KIZ";
      case 3:
        return "ERKEK";
      case 4:
        return "KUPA";
      case 5:
        return "RIFKI";
      case 6:
        return "EL";
      case 7:
        return "KOZLAR";
      case 8:
        return "KIZ";
      default:
        "OYUN SEÇİNİZ";
    }
    throw {"null"};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstNames.king),
      ),
      body: Column(
        children: [
          FirstRow(
            onTap: devamFunction,
            name1: widget.player1,
            name2: widget.player2,
            name3: widget.player3,
            name4: widget.player4,
            widget: widget,
          ),
          SecondRow(
            oyuncu1Puan1: 0,
            oyuncu1Puan2: 5,
            oyuncu2Puan1: 0,
            oyuncu2Puan2: 0,
            oyuncu3Puan1: 0,
            oyuncu3Puan2: 0,
            oyuncu4Puan1: 0,
            oyuncu4Puan2: 0,
          ),
          ThirdRow(),
          FourthRow(),
          FifthRow(),
          SixthRow(),
          SeventhRow(),
          EighthRow(),
          const NinthRow(),
          const TenthRow(),
          const EleventhRow(),
        ],
      ),
    );
  }
}
