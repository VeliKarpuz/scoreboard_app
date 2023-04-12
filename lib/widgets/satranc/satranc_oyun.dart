import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

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
  AssetsAudioPlayer player = AssetsAudioPlayer();
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

  /// tık sesi

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
                  isPauseActive == false
                      ? isPlayer1Active == null
                          ? {
                              startTimer2(),
                              moveCount++,
                              player.open(
                                Audio("assets/chess_sound.wav"),
                              )
                            }
                          : isPlayer1Active == true
                              ? {
                                  startTimer2(),
                                  timer1?.cancel(),
                                  duration1 = duration1 +
                                      Duration(seconds: widget.moveSeconds),
                                  moveCount++,
                                  player.open(
                                    Audio("assets/chess_sound.wav"),
                                  )
                                }
                              : null
                      : null;
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20)),
                    color: isPlayer1Active == null
                        ? const Color.fromARGB(255, 201, 186, 228)
                        : isPlayer1Active == true
                            ? const Color.fromARGB(255, 112, 77, 194)
                            : const Color.fromARGB(255, 201, 186, 228),
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
              child: SizedBox(
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
                            title: const Text('Yeni Oyun'),
                            content: const Text(
                                'Yeni oyuna başlamak istiyor musunuz?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Vazgeç'),
                              ),
                              TextButton(
                                onPressed: () {
                                  timer1?.cancel();
                                  timer2?.cancel();
                                  setState(() {
                                    duration1 =
                                        Duration(minutes: widget.moveMinutes);
                                    duration2 =
                                        Duration(minutes: widget.moveMinutes);
                                    isPlayer1Active = null;
                                    isPauseActive = false;
                                    moveCount = 0;
                                  });
                                  Navigator.pop(context);
                                },
                                child: const Text('Devam'),
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
                              "Hamle",
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
              ),
            ),
            Expanded(
              flex: 5,
              child: InkWell(
                onTap: () {
                  isPauseActive == false
                      ? isPlayer1Active == null
                          ? {
                              startTimer1(),
                              moveCount++,
                              player.open(
                                Audio("assets/chess_sound.wav"),
                              )
                            }
                          : isPlayer1Active == false
                              ? {
                                  startTimer1(),
                                  timer2?.cancel(),
                                  duration2 = duration2 +
                                      Duration(seconds: widget.moveSeconds),
                                  moveCount++,
                                  player.open(
                                    Audio("assets/chess_sound.wav"),
                                  )
                                }
                              : null
                      : null;
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                    color: isPlayer1Active == null
                        ? const Color.fromARGB(255, 201, 186, 228)
                        : isPlayer1Active == false
                            ? const Color.fromARGB(255, 112, 77, 194)
                            : const Color.fromARGB(255, 201, 186, 228),
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

  pauseIcon() {}
}
