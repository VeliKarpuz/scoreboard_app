import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    title: 'Oyun Timer',
    home: GameTimerApp(),
  ));
}

class GameTimerApp extends StatefulWidget {
  @override
  _GameTimerAppState createState() => _GameTimerAppState();
}

class _GameTimerAppState extends State<GameTimerApp> {
  Timer? _timer1;
  Timer? _timer2;
  bool _player1Enabled = true;
  bool _player2Enabled = false;
  Duration _player1Time = Duration(minutes: 2);
  Duration _player2Time = Duration(minutes: 2);

  void _startPlayer1Timer() {
    _timer1 = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _player1Time = _player1Time - Duration(seconds: 1);
        if (_player1Time.inSeconds <= 0) {
          _timer1!.cancel();
          _player1Enabled = false;
        }
      });
    });
  }

  void _startPlayer2Timer() {
    _timer2 = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _player2Time = _player2Time - Duration(seconds: 1);
        if (_player2Time.inSeconds <= 0) {
          _timer2!.cancel();
          _player2Enabled = false;
        }
      });
    });
  }

  void _stopPlayer1Timer() {
    _timer1?.cancel();
    _player1Time += Duration(seconds: 10);
    _player2Enabled = true;
    _player1Enabled = false;
  }

  void _stopPlayer2Timer() {
    _timer2?.cancel();
    _player2Time += Duration(seconds: 10);
    _player1Enabled = true;
    _player2Enabled = false;
  }

  void _startGame() {
    setState(() {
      _player1Time = Duration(minutes: 2);
      _player2Time = Duration(minutes: 2);
      _player1Enabled = true;
      _player2Enabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    String player1TimeFormatted =
        '${_player1Time.inHours}:${(_player1Time.inMinutes % 60).toString().padLeft(2, '0')}:${(_player1Time.inSeconds % 60).toString().padLeft(2, '0')}';
    String player2TimeFormatted =
        '${_player2Time.inHours}:${(_player2Time.inMinutes % 60).toString().padLeft(2, '0')}:${(_player2Time.inSeconds % 60).toString().padLeft(2, '0')}';

    return Scaffold(
      appBar: AppBar(
        title: Text('Oyun Timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _player1Enabled ? _startPlayer1Timer : null,
              child: Text('Oyuncu 1\n$player1TimeFormatted'),
            ),
            ElevatedButton(
              onPressed: _player2Enabled ? _startPlayer2Timer : null,
              child: Text('Oyuncu 2\n$player2TimeFormatted'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _player1Enabled ? _stopPlayer1Timer : null,
              child: Text('Oyuncu 1\'e\n10 Saniye Ekle'),
            ),
            ElevatedButton(
              onPressed: _player2Enabled ? _stopPlayer2Timer : null,
              child: Text('Oyuncu 2\'ye\n10 Saniye Ekle'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _startGame,
              child: Text('Oyunu Başlat'),
            ),
          ],
        ),
      ),
    );
  }
}
