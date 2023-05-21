import 'package:flutter/material.dart';

class PuanState {
  ValueNotifier<List<int>> oyuncu1PuanListesi = ValueNotifier(
    List.generate(20, (index) => 0),
  );
  ValueNotifier<List<int>> oyuncu2PuanListesi = ValueNotifier(
    List.generate(20, (index) => 0),
  );
  ValueNotifier<List<int>> oyuncu3PuanListesi = ValueNotifier(
    List.generate(20, (index) => 0),
  );
  ValueNotifier<List<int>> oyuncu4PuanListesi = ValueNotifier(
    List.generate(20, (index) => 0),
  );

  void puanGir(int oyuncu1, int oyuncu2, int oyuncu3, int oyuncu4, int row) {
    oyuncu1PuanListesi.value.removeAt(row);
    oyuncu1PuanListesi.value.insert(row, oyuncu1);
    oyuncu1PuanListesi.value = List<int>.from(oyuncu1PuanListesi.value);
    oyuncu2PuanListesi.value.removeAt(row);
    oyuncu2PuanListesi.value.insert(row, oyuncu2);
    oyuncu2PuanListesi.value = List<int>.from(oyuncu2PuanListesi.value);
    oyuncu3PuanListesi.value.removeAt(row);
    oyuncu3PuanListesi.value.insert(row, oyuncu3);
    oyuncu3PuanListesi.value = List<int>.from(oyuncu3PuanListesi.value);
    oyuncu4PuanListesi.value.removeAt(row);
    oyuncu4PuanListesi.value.insert(row, oyuncu4);
    oyuncu4PuanListesi.value = List<int>.from(oyuncu4PuanListesi.value);
  }

  int cezaToplam(List list) {
    int toplamCeza = list[0] * 180 +
        list[1] * 180 +
        list[2] * 100 +
        list[3] * 100 +
        list[4] * 120 +
        list[5] * 120 +
        list[6] * 30 +
        list[7] * 30 +
        list[8] * 320 +
        list[9] * 320 +
        list[10] * 50 +
        list[11] * 50;
    return toplamCeza;
  }

  int kozToplam(List list) {
    int toplamKoz = list[12] * 50 +
        list[13] * 50 +
        list[14] * 50 +
        list[15] * 50 +
        list[16] * 50 +
        list[17] * 50 +
        list[18] * 50 +
        list[19] * 50;
    return toplamKoz;
  }

  num puanToplam(List list) {
    num toplamPuan = -1 *
            (list[0] * 180 +
                list[1] * 180 +
                list[2] * 100 +
                list[3] * 100 +
                list[4] * 120 +
                list[5] * 120 +
                list[6] * 30 +
                list[7] * 30 +
                list[8] * 320 +
                list[9] * 320 +
                list[10] * 50 +
                list[11] * 50) +
        (list[12] * 50 +
            list[13] * 50 +
            list[14] * 50 +
            list[15] * 50 +
            list[16] * 50 +
            list[17] * 50 +
            list[18] * 50 +
            list[19] * 50);
    return toplamPuan;
  }
}
