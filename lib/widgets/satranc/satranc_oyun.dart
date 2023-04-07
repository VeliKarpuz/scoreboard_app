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
  final scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    stopWatchTimer.rawTime.listen((value) =>
        print('rawTime $value ${StopWatchTimer.getDisplayTime(value)}'));
    stopWatchTimer.minuteTime.listen((value) => print('minuteTime $value'));
    stopWatchTimer.secondTime.listen((value) => print('secondTime $value'));
    stopWatchTimer.records.listen((value) => print('records $value'));
    stopWatchTimer.fetchStopped.listen((value) => print('stopped from stream'));
    stopWatchTimer.fetchEnded.listen((value) => print('ended from stream'));

    /// Can be set preset time. This case is "00:01.23".
    // _stopWatchTimer.setPresetTime(mSec: 1234);
  }

  @override
  void dispose() async {
    super.dispose();
    await stopWatchTimer.dispose();
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
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: ElevatedButton(
                            onPressed: stopWatchTimer.onStartTimer,
                            child: const Text(
                              'Start',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: ElevatedButton(
                            onPressed: stopWatchTimer.onStopTimer,
                            child: const Text(
                              'Stop',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: ElevatedButton(
                            onPressed: () {
                              stopWatchTimer.setPresetSecondTime(10);
                            },
                            child: const Text(
                              'Set Second',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.grey,
                child: Center(),
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
            StreamBuilder<int>(
              stream: stopWatchTimer.rawTime,
              initialData: stopWatchTimer.rawTime.value,
              builder: (context, snap) {
                final value = snap.data!;
                final displayTime =
                    StopWatchTimer.getDisplayTime(value, hours: false);
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        displayTime,
                        style: const TextStyle(
                            fontSize: 40,
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        value.toString(),
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                );
              },
            ),
            // StreamBuilder<int>(
            //   stream: stopWatchTimer.secondTime,
            //   initialData: stopWatchTimer.secondTime.value,
            //   builder: (context, snap) {
            //     final value = snap.data;
            //     print('Listen every second. $value');
            //     return Column(
            //       children: <Widget>[
            //         Padding(
            //             padding: const EdgeInsets.all(8),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: <Widget>[
            //                 const Padding(
            //                   padding: EdgeInsets.symmetric(horizontal: 4),
            //                   child: Text(
            //                     'second',
            //                     style: TextStyle(
            //                       fontSize: 17,
            //                       fontFamily: 'Helvetica',
            //                     ),
            //                   ),
            //                 ),
            //                 Padding(
            //                   padding:
            //                       const EdgeInsets.symmetric(horizontal: 4),
            //                   child: Text(
            //                     value.toString(),
            //                     style: const TextStyle(
            //                       fontSize: 30,
            //                       fontFamily: 'Helvetica',
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             )),
            //       ],
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
