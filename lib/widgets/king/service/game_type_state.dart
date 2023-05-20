import 'package:flutter/material.dart';

class GameTypeState {
  ValueNotifier<int> whichGameIsActive = ValueNotifier(0);
  ValueNotifier<bool> gameChoosing = ValueNotifier(true);
  ValueNotifier<bool> isDuringGame = ValueNotifier(false);
  ValueNotifier<int> soniki = ValueNotifier(-1);
  ValueNotifier<int> kiz = ValueNotifier(1);
  ValueNotifier<int> erkek = ValueNotifier(3);
  ValueNotifier<int> kupa = ValueNotifier(5);
  ValueNotifier<int> rifki = ValueNotifier(7);
  ValueNotifier<int> el = ValueNotifier(9);
  ValueNotifier<int> kozlar = ValueNotifier(11);

  void gameSelector(int queue) {
    whichGameIsActive.value = queue;
    gameChoosing.value = false;
    switch (queue) {
      case 1:
        soniki.value++;
        break;
      case 2:
        kiz.value++;
        break;
      case 3:
        erkek.value++;
        break;
      case 4:
        kupa.value++;
        break;
      case 5:
        rifki.value++;
        break;
      case 6:
        el.value++;
        break;
      case 7:
        kozlar.value++;
        break;
    }
  }

  void isGameChoosing() {
    gameChoosing.value = !gameChoosing.value;
    gameChoosing.value ? whichGameIsActive.value = 0 : null;
  }
}
