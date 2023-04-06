import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class SatrancOyun extends StatefulWidget {
  final String oyuncu1;
  final String oyuncu2;

  const SatrancOyun({
    super.key,
    required this.oyuncu1,
    required this.oyuncu2,
  });

  @override
  State<SatrancOyun> createState() => _SatrancOyunState();
}

class _SatrancOyunState extends State<SatrancOyun> {
  final stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countDown,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue[300],
                child: const Center(
                  child: Text("Timer"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey,
                child: const Center(),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.red[300],
                child: const Center(
                  child: Text("Timer"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
