import 'package:flutter/material.dart';

class PlayerState {
  ValueNotifier<int> whichPlayerIsActive = ValueNotifier<int>(0);
  ValueNotifier<bool> isPlayerSelected = ValueNotifier<bool>(false);

  void playerselected() {
    isPlayerSelected.value = true;
  }

  void nextPlayer() {
    whichPlayerIsActive.value < 4
        ? whichPlayerIsActive.value++
        : whichPlayerIsActive.value = 1;
  }

  void selectPlayer(int queue) {
    whichPlayerIsActive.value == 0 ? whichPlayerIsActive.value = queue : null;
  }
}
