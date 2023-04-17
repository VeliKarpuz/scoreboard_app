import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:scoreboard_app/const_names.dart';

class SatrancOyun extends StatefulWidget {
  final int moveSeconds;
  final int moveMinutes;
  const SatrancOyun({
    super.key,
    required this.moveSeconds,
    required this.moveMinutes,
  });

  @override
  State<SatrancOyun> createState() => _SatrancOyunState();
}

class _SatrancOyunState extends State<SatrancOyun> {
  AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  Duration duration1 = const Duration();
  Duration duration2 = const Duration();
  Timer? timer1;
  Timer? timer2;
  bool? isPlayer1Active;
  int moveCount = 0;
  bool isPauseActive = false;

  @override
  void initState() {
    super.initState();
    duration1 = Duration(minutes: widget.moveMinutes);
    duration2 = Duration(minutes: widget.moveMinutes);
  }

  startTimer1() {
    isPlayer1Active = true;
    timer1 = Timer.periodic(
      const Duration(seconds: 1),
      (timer) => setState(
        () {
          final seconds = duration1.inSeconds - 1;
          if (seconds < 0) {
            timer.cancel();
          } else {
            duration1 = Duration(seconds: seconds);
          }
        },
      ),
    );
  }

  startTimer2() {
    isPlayer1Active = false;
    timer2 = Timer.periodic(
      const Duration(seconds: 1),
      (timer) => setState(
        () {
          final seconds = duration2.inSeconds - 1;
          if (seconds < 0) {
            timer.cancel();
          } else {
            duration2 = Duration(seconds: seconds);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: InkWell(
                onTap: () {
                  playerOneTap();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                    color: colorChange(isPlayer1Active),
                  ),
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: buildTime(duration1),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: middleMenu(context),
            ),
            Expanded(
              flex: 5,
              child: InkWell(
                onTap: () {
                  playerTwoTap();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: colorChange(isPlayer1Active),
                  ),
                  child: Center(
                    child: buildTime(duration2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void playerTwoTap() {
    isPauseActive == false
        ? isPlayer1Active == null
            ? {
                startTimer1(),
                moveCount++,
                audioPlayer.open(
                  Audio(ConstNames.clickSoundPath),
                )
              }
            : isPlayer1Active == false
                ? {
                    startTimer1(),
                    timer2?.cancel(),
                    duration2 =
                        duration2 + Duration(seconds: widget.moveSeconds),
                    moveCount++,
                    audioPlayer.open(
                      Audio(ConstNames.clickSoundPath),
                    )
                  }
                : null
        : null;
  }

  void playerOneTap() {
    isPauseActive == false
        ? isPlayer1Active == null
            ? {
                startTimer2(),
                moveCount++,
                audioPlayer.open(
                  Audio(ConstNames.clickSoundPath),
                )
              }
            : isPlayer1Active == true
                ? {
                    startTimer2(),
                    timer1?.cancel(),
                    duration1 =
                        duration1 + Duration(seconds: widget.moveSeconds),
                    moveCount++,
                    audioPlayer.open(
                      Audio(ConstNames.clickSoundPath),
                    )
                  }
                : null
        : null;
  }

  Color colorChange(bool? player) {
    return player == null
        ? ConstNames.satrancPassiveColor
        : player == true
            ? ConstNames.satrancActiveColor
            : ConstNames.satrancPassiveColor;
  }

  SizedBox middleMenu(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text(ConstNames.yeniOyun),
                  content: const Text(ConstNames.yeniOyunText),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(ConstNames.vazgec),
                    ),
                    TextButton(
                      onPressed: () {
                        timer1?.cancel();
                        timer2?.cancel();
                        setState(() {
                          duration1 = Duration(minutes: widget.moveMinutes);
                          duration2 = Duration(minutes: widget.moveMinutes);
                          isPlayer1Active = null;
                          isPauseActive = false;
                          moveCount = 0;
                        });
                        Navigator.pop(context);
                      },
                      child: const Text(ConstNames.devam),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(FontAwesomeIcons.arrowsRotate),
          ),
          IconButton(
              onPressed: () {
                isPauseActive == false
                    ? {
                        timer1?.cancel(),
                        timer2?.cancel(),
                      }
                    : isPlayer1Active == true
                        ? startTimer1()
                        : startTimer2();
                isPauseActive == true
                    ? isPauseActive = false
                    : isPauseActive = true;
                setState(() {});
              },
              icon: Icon(
                isPauseActive == false
                    ? (FontAwesomeIcons.pause)
                    : (FontAwesomeIcons.play),
              )),
          RotatedBox(
            quarterTurns: 1,
            child: SizedBox(
              child: Column(
                children: [
                  Text(
                    moveCount.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ConstNames.hamle,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    final minutes = twoDigits(duration.inMinutes.remainder(60));

    return Center(
      child: Text(
        "$minutes.$seconds",
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}
