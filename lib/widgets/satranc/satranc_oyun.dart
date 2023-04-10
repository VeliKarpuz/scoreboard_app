import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class SatrancOyun extends StatefulWidget {
  final String oyuncu1;
  final String oyuncu2;
  final int minute;
  final int second;

  const SatrancOyun({
    super.key,
    required this.oyuncu1,
    required this.oyuncu2,
    required this.minute,
    required this.second,
  });

  @override
  State<SatrancOyun> createState() => _SatrancOyunState();
}

class _SatrancOyunState extends State<SatrancOyun> {
  static final stopWatchTimer = StopWatchTimer(mode: StopWatchMode.countDown);
  String displayTime = "";
  presetTime() {
    stopWatchTimer.setPresetMinuteTime(widget.minute);
  }

  stopRes() {
    stopWatchTimer.onStopTimer();
    stopWatchTimer.setPresetTime(mSec: widget.second * 1000);
    print(displayTime);
    setState(() {});
  }

  @override
  void initState() {
    presetTime();
  }

  @override
  void dispose() {
    super.dispose();
    stopWatchTimer.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue[300],
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: stopWatchTimer.onStartTimer,
                        child: const Text('Start'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: InkWell(
                onTap: stopRes,
                child: SizedBox(
                  child: StreamBuilder<int>(
                    stream: stopWatchTimer.rawTime,
                    initialData: stopWatchTimer.rawTime.value,
                    builder: (context, snap) {
                      final value = stopWatchTimer.rawTime.value;
                      displayTime = StopWatchTimer.getDisplayTime(value,
                          hours: false, minuteRightBreak: ".");
                      return Center(
                        child: Text(
                          displayTime,
                          style: const TextStyle(fontSize: 50),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
