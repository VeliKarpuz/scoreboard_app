import 'package:flutter/material.dart';

class GameTypeState {
  ValueNotifier<int> whichGameIsActive = ValueNotifier(0);

  void gameSelector(int queue) {
    whichGameIsActive.value = queue;
  }
}
