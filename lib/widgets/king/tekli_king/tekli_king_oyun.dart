import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/common_widgets/puan.dart';
import 'package:scoreboard_app/widgets/common_widgets/score_entry_row.dart';
import 'package:scoreboard_app/widgets/king/service/player_state.dart';
import 'package:scoreboard_app/widgets/king/service/puan_state.dart';
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
  final gameTypeState = getIt.get<GameTypeState>();
  final playerState = getIt.get<PlayerState>();
  final puanState = getIt.get<PuanState>();
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
                            style: const TextStyle(fontSize: 20),
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
                            puanlama();
                            Navigator.pop(context);
                            gameTypeState.isGameChoosing();
                            playerState.nextPlayer();
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

  SecondRow sonikiSatir = SecondRow(
    onTap: () {},
    oyuncu1Puan1: 0,
    oyuncu1Puan2: 0,
    oyuncu2Puan1: 0,
    oyuncu2Puan2: 0,
    oyuncu3Puan1: 0,
    oyuncu3Puan2: 0,
    oyuncu4Puan1: 0,
    oyuncu4Puan2: 0,
    activatedCounter: 0,
  );
  ThirdRow kizSatir = ThirdRow(
    onTap: () {},
    activatedCounter: 0,
    oyuncu1puan3: 0,
    oyuncu1puan4: 0,
    oyuncu2puan3: 0,
    oyuncu2puan4: 0,
    oyuncu3puan3: 0,
    oyuncu3puan4: 0,
    oyuncu4puan3: 0,
    oyuncu4puan4: 0,
  );
  FourthRow erkekSatir = FourthRow(
    onTap: () {},
    activatedCounter: 0,
    oyuncu1puan5: 0,
    oyuncu1puan6: 0,
    oyuncu2puan5: 0,
    oyuncu2puan6: 0,
    oyuncu3puan5: 0,
    oyuncu3puan6: 0,
    oyuncu4puan5: 0,
    oyuncu4puan6: 0,
  );
  FifthRow kupaSatir = FifthRow(
    onTap: () {},
    activatedCounter: 0,
    oyuncu1puan7: 0,
    oyuncu1puan8: 0,
    oyuncu2puan7: 0,
    oyuncu2puan8: 0,
    oyuncu3puan7: 0,
    oyuncu3puan8: 0,
    oyuncu4puan7: 0,
    oyuncu4puan8: 0,
  );
  SixthRow rifkiSatir = SixthRow(
    onTap: () {},
    activatedCounter: 0,
    oyuncu1puan10: 0,
    oyuncu1puan9: 0,
    oyuncu2puan10: 0,
    oyuncu2puan9: 0,
    oyuncu3puan10: 0,
    oyuncu3puan9: 0,
    oyuncu4puan10: 0,
    oyuncu4puan9: 0,
  );
  SeventhRow elSatir = SeventhRow(
    onTap: () {},
    activatedCounter: 0,
    oyuncu1puan11: 0,
    oyuncu1puan12: 0,
    oyuncu2puan11: 0,
    oyuncu2puan12: 0,
    oyuncu3puan11: 0,
    oyuncu3puan12: 0,
    oyuncu4puan11: 0,
    oyuncu4puan12: 0,
  );
  EighthRow kozlarSatir = EighthRow(
    onTap: () {},
    activatedCounter: 0,
    oyuncu1puan13: 0,
    oyuncu1puan14: 0,
    oyuncu1puan15: 0,
    oyuncu1puan16: 0,
    oyuncu1puan17: 0,
    oyuncu1puan18: 0,
    oyuncu1puan19: 0,
    oyuncu1puan20: 0,
    oyuncu2puan13: 0,
    oyuncu2puan14: 0,
    oyuncu2puan15: 0,
    oyuncu2puan16: 0,
    oyuncu2puan17: 0,
    oyuncu2puan18: 0,
    oyuncu2puan19: 0,
    oyuncu2puan20: 0,
    oyuncu3puan13: 0,
    oyuncu3puan14: 0,
    oyuncu3puan15: 0,
    oyuncu3puan16: 0,
    oyuncu3puan17: 0,
    oyuncu3puan18: 0,
    oyuncu3puan19: 0,
    oyuncu3puan20: 0,
    oyuncu4puan13: 0,
    oyuncu4puan14: 0,
    oyuncu4puan15: 0,
    oyuncu4puan16: 0,
    oyuncu4puan17: 0,
    oyuncu4puan18: 0,
    oyuncu4puan19: 0,
    oyuncu4puan20: 0,
  );

  int sonikiCounter = 0;
  int kizCounter = 0;
  int erkekCounter = 0;
  int kupaCounter = 0;
  int rifkiCounter = 0;
  int elCounter = 0;
  int kozlarCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstNames.king),
      ),
      body: ValueListenableBuilder<List<int>>(
        valueListenable: puanState.oyuncu1PuanListesi,
        builder: (BuildContext context, List<int> liste1, Widget? child) {
          return ValueListenableBuilder(
            valueListenable: puanState.oyuncu2PuanListesi,
            builder: (BuildContext context, List<int> liste2, Widget? child) {
              return ValueListenableBuilder(
                valueListenable: puanState.oyuncu3PuanListesi,
                builder:
                    (BuildContext context, List<int> liste3, Widget? child) {
                  return ValueListenableBuilder(
                    valueListenable: puanState.oyuncu4PuanListesi,
                    builder: (BuildContext context, List<int> liste4,
                        Widget? child) {
                      return Column(
                        children: [
                          FirstRow(
                            onTap: devamFunction,
                            name1: widget.player1,
                            name2: widget.player2,
                            name3: widget.player3,
                            name4: widget.player4,
                            widget: widget,
                          ),
                          sonikiSatir = SecondRow(
                            onTap: () {
                              if (gameTypeState.gameChoosing.value) {
                                if (sonikiSatir.soniki.activatedCounter < 2) {
                                  gameTypeState.isGameChoosing();
                                  gameTypeState.gameSelector(1);
                                  sonikiCounter++;
                                } else {
                                  null;
                                }
                              }
                            },
                            oyuncu1Puan1: liste1[0],
                            oyuncu2Puan1: liste2[0],
                            oyuncu3Puan1: liste3[0],
                            oyuncu4Puan1: liste4[0],
                            oyuncu1Puan2: liste1[1],
                            oyuncu2Puan2: liste2[1],
                            oyuncu3Puan2: liste3[1],
                            oyuncu4Puan2: liste4[1],
                            activatedCounter: sonikiCounter,
                          ),
                          kizSatir = ThirdRow(
                              oyuncu1puan3: liste1[2],
                              oyuncu2puan3: liste2[2],
                              oyuncu3puan3: liste3[2],
                              oyuncu4puan3: liste4[2],
                              oyuncu1puan4: liste1[3],
                              oyuncu2puan4: liste2[3],
                              oyuncu3puan4: liste3[3],
                              oyuncu4puan4: liste4[3],
                              onTap: () {
                                if (gameTypeState.gameChoosing.value) {
                                  if (kizSatir.kiz.activatedCounter < 2) {
                                    gameTypeState.isGameChoosing();
                                    gameTypeState.gameSelector(2);
                                    kizCounter++;
                                  } else {
                                    null;
                                  }
                                }
                              },
                              activatedCounter: kizCounter),
                          erkekSatir = FourthRow(
                              oyuncu1puan5: liste1[4],
                              oyuncu2puan5: liste2[4],
                              oyuncu3puan5: liste3[4],
                              oyuncu4puan5: liste4[4],
                              oyuncu1puan6: liste1[5],
                              oyuncu2puan6: liste2[5],
                              oyuncu3puan6: liste3[5],
                              oyuncu4puan6: liste4[5],
                              onTap: () {
                                if (gameTypeState.gameChoosing.value) {
                                  if (erkekSatir.erkek.activatedCounter < 2) {
                                    gameTypeState.isGameChoosing();
                                    gameTypeState.gameSelector(3);
                                    erkekCounter++;
                                  } else {
                                    null;
                                  }
                                }
                              },
                              activatedCounter: erkekCounter),
                          kupaSatir = FifthRow(
                              oyuncu1puan7: liste1[6],
                              oyuncu2puan7: liste2[6],
                              oyuncu3puan7: liste3[6],
                              oyuncu4puan7: liste4[6],
                              oyuncu1puan8: liste1[7],
                              oyuncu2puan8: liste2[7],
                              oyuncu3puan8: liste3[7],
                              oyuncu4puan8: liste4[7],
                              onTap: () {
                                if (gameTypeState.gameChoosing.value) {
                                  if (kupaSatir.kupa.activatedCounter < 2) {
                                    gameTypeState.isGameChoosing();
                                    gameTypeState.gameSelector(4);
                                    kupaCounter++;
                                  } else {
                                    null;
                                  }
                                }
                              },
                              activatedCounter: kupaCounter),
                          rifkiSatir = SixthRow(
                              oyuncu1puan9: liste1[8],
                              oyuncu2puan9: liste2[8],
                              oyuncu3puan9: liste3[8],
                              oyuncu4puan9: liste4[8],
                              oyuncu1puan10: liste1[9],
                              oyuncu2puan10: liste2[9],
                              oyuncu3puan10: liste3[9],
                              oyuncu4puan10: liste4[9],
                              onTap: () {
                                if (gameTypeState.gameChoosing.value) {
                                  if (rifkiSatir.rifki.activatedCounter < 2) {
                                    gameTypeState.isGameChoosing();
                                    gameTypeState.gameSelector(5);
                                    rifkiCounter++;
                                  } else {
                                    null;
                                  }
                                }
                              },
                              activatedCounter: rifkiCounter),
                          elSatir = SeventhRow(
                              oyuncu1puan11: liste1[10],
                              oyuncu2puan11: liste2[10],
                              oyuncu3puan11: liste3[10],
                              oyuncu4puan11: liste4[10],
                              oyuncu1puan12: liste1[11],
                              oyuncu2puan12: liste2[11],
                              oyuncu3puan12: liste3[11],
                              oyuncu4puan12: liste4[11],
                              onTap: () {
                                print(puanState.cezaHesapla(liste1));
                                if (gameTypeState.gameChoosing.value) {
                                  if (elSatir.el.activatedCounter < 2) {
                                    gameTypeState.isGameChoosing();
                                    gameTypeState.gameSelector(6);
                                    elCounter++;
                                  } else {
                                    null;
                                  }
                                }
                              },
                              activatedCounter: elCounter),
                          kozlarSatir = EighthRow(
                              oyuncu1puan13: liste1[12],
                              oyuncu2puan13: liste2[12],
                              oyuncu3puan13: liste3[12],
                              oyuncu4puan13: liste4[12],
                              oyuncu1puan14: liste1[13],
                              oyuncu2puan14: liste2[13],
                              oyuncu3puan14: liste3[13],
                              oyuncu4puan14: liste4[13],
                              oyuncu1puan15: liste1[14],
                              oyuncu2puan15: liste2[14],
                              oyuncu3puan15: liste3[14],
                              oyuncu4puan15: liste4[14],
                              oyuncu1puan16: liste1[15],
                              oyuncu2puan16: liste2[15],
                              oyuncu3puan16: liste3[15],
                              oyuncu4puan16: liste4[15],
                              oyuncu1puan17: liste1[16],
                              oyuncu2puan17: liste2[16],
                              oyuncu3puan17: liste3[16],
                              oyuncu4puan17: liste4[16],
                              oyuncu1puan18: liste1[17],
                              oyuncu2puan18: liste2[17],
                              oyuncu3puan18: liste3[17],
                              oyuncu4puan18: liste4[17],
                              oyuncu1puan19: liste1[18],
                              oyuncu2puan19: liste2[18],
                              oyuncu3puan19: liste3[18],
                              oyuncu4puan19: liste4[18],
                              oyuncu1puan20: liste1[19],
                              oyuncu2puan20: liste2[19],
                              oyuncu3puan20: liste3[19],
                              oyuncu4puan20: liste4[19],
                              onTap: () {
                                if (gameTypeState.gameChoosing.value) {
                                  if (kozlarSatir.kozlar.activatedCounter < 8) {
                                    gameTypeState.isGameChoosing();
                                    gameTypeState.gameSelector(7);
                                    kozlarCounter++;
                                  } else {
                                    null;
                                  }
                                }
                              },
                              activatedCounter: kozlarCounter),
                          NinthRow(
                            oyuncu1ceza: puanState.cezaHesapla(liste1),
                            oyuncu2ceza: puanState.cezaHesapla(liste2),
                            oyuncu3ceza: puanState.cezaHesapla(liste3),
                            oyuncu4ceza: puanState.cezaHesapla(liste4),
                          ),
                          // TenthRow(),
                          // EleventhRow(),
                        ],
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  int rowSelector() {
    switch (gameTypeState.whichGameIsActive.value) {
      case 1:
        return gameTypeState.soniki.value;
      case 2:
        return gameTypeState.kiz.value;
      case 3:
        return gameTypeState.erkek.value;
      case 4:
        return gameTypeState.kupa.value;
      case 5:
        return gameTypeState.rifki.value;
      case 6:
        return gameTypeState.el.value;
      case 7:
        return gameTypeState.kozlar.value;
    }
    throw 0;
  }

  void puanlama() {
    puanState.puanGir(
      puan1.selectedScore,
      puan2.selectedScore,
      puan3.selectedScore,
      puan4.selectedScore,
      rowSelector(),
    );
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
    throw {"OYUN SEÇİNİZ"};
  }
}
