import 'package:flutter/material.dart';

class GameTypeState {
  ValueNotifier<int> whichGameIsActive = ValueNotifier(0);
  ValueNotifier<bool> gameChoosing = ValueNotifier(false);
  ValueNotifier<bool> isDuringGame = ValueNotifier(false);

  void gameChoosingTrue() {
    gameChoosing.value = true;
  }

  void gameSelector(int queue) {
    whichGameIsActive.value = queue;
    gameChoosing.value = false;
  }

  void DuringGame() {
    isDuringGame.value = !isDuringGame.value;
  }
}
