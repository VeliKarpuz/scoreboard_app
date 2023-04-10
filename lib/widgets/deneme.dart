import 'dart:async';
import 'package:flutter/material.dart';

class Deneme extends StatefulWidget {
  final int moveSeconds;
  const Deneme({
    super.key,
    required this.moveSeconds,
  });

  @override
  State<Deneme> createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  final countDownDuration = const Duration(minutes: 1);
  final countDownDuration2 = const Duration(minutes: 1);
  Duration duration1 = const Duration();
  Duration duration2 = const Duration();
  Timer? timer1;
  Timer? timer2;
  bool player1Active = true;
  // bool player2Active = false;
  @override
  void initState() {
    super.initState();
    duration1 = countDownDuration;
    duration2 = countDownDuration2;
  }

  /// Bir oyuncu arka arkaya basamamalı
  /// Restart game tuşu yapılacak
  /// oyuncu isimleri yapılacak
  /// ayarları değiştir tuşu yapılacak
  /// önceki oyunların kaydı tutulacak
  /// aktif olan oyuncunun tarafı seçili renk ile yanacak diğeri pasif renkte duracak.

  startTimer1() {
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
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: InkWell(
                onTap: () {
                  startTimer2();
                  timer1?.cancel();
                },
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: buildTime(duration1),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 5,
              child: InkWell(
                onTap: () {
                  startTimer1();
                  timer2?.cancel();
                },
                child: Container(
                  color: Colors.red,
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
}
