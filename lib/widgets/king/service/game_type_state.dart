import 'package:flutter/material.dart';

class GameTypeState {
  ValueNotifier<int> whichGameIsActive = ValueNotifier(0);
  ValueNotifier<bool> gameChoosing = ValueNotifier(true);
  ValueNotifier<bool> isDuringGame = ValueNotifier(false);

  void gameSelector(int queue) {
    whichGameIsActive.value = queue;
    gameChoosing.value = false;
  }

  void DuringGame() {
    isDuringGame.value = !isDuringGame.value;
  }
}
