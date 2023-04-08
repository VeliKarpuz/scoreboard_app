import 'dart:async';
import 'package:flutter/material.dart';

class Deneme extends StatefulWidget {
  final int moveSeconds;
  const Deneme({super.key, required this.moveSeconds});

  @override
  State<Deneme> createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  static const countDownDuration = Duration(minutes: 1);
  Duration duration = Duration();
  Timer? timer;
  bool isCountDown = true;
  @override
  void initState() {
    super.initState();
    // startTimer();
    reset();
  }

  void reset() {
    if (isCountDown) {
      setState(() {
        duration = countDownDuration;
      });
    } else {
      setState(() {
        duration = Duration();
      });
    }
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
    duration = Duration(seconds: duration.inSeconds + widget.moveSeconds);
  }

  void addTime() {
    final addSeconds = isCountDown ? -1 : 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            buildTime(),
            ElevatedButton(onPressed: startTimer, child: Text("başla"))
          ],
        ),
      ),
    );
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    final minutes = twoDigits(duration.inMinutes.remainder(60));

    return Text(
      "$minutes.$seconds",
      style: const TextStyle(fontSize: 40),
    );
  }
}
