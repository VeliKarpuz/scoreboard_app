import 'package:flutter/material.dart';

class ConstNames {
  static const String yeniOyunText =
      'Bu oyun silinecek ve yeni bir oyun başlatılacak. Devam etmek istiyor musunuz?';
  static const String title = "Scoreboard";
  static const String tamamlanmadi = "Henüz Tamamlanmadı";
  static const String batak = "Batak";
  static const String king = "King";
  static const String okey = "Okey";
  static const String satranc = "Satranç";
  static const String esliBatak = "Eşli Batak";
  static const String tekliBatak = "Tekli Batak";
  static const String ucBesSekiz = "Üç Beş Sekiz";
  static const String kaydet = "Kaydet";
  static const String oyuncu1 = "Oyuncu 1";
  static const String oyuncu2 = "Oyuncu 2";
  static const String oyuncu3 = "Oyuncu 3";
  static const String oyuncu4 = "Oyuncu 4";
  static const String yeniOyun = "Yeni Oyun";
  static const String vazgec = "Vazgeç";
  static const String devam = "Devam";
  static const String puanlar = "Puanlar";
  static const String takim1 = "Takım 1";
  static const String takim2 = "Takım 2";
  static const String sureAyarlari = "Süre Ayarları";
  static const String dakika = "Dakika";
  static const String saniye = "+ Saniye";
  static const String hamle = "Hamle";
  static const String clickSoundPath = "assets/chess_sound.wav";
  static int topla(List<int> list) {
    int toplam = 0;
    for (int i = 0; i < list.length; i++) {
      toplam = toplam + list[i];
    }
    return toplam;
  }

  static const Color gameBackground = Color.fromARGB(248, 228, 187, 197);
  static const Color satrancActiveColor = Color.fromARGB(255, 112, 77, 194);
  static const Color satrancPassiveColor = Color.fromARGB(255, 201, 186, 228);
  static const Color satrancActiveTextColor = Colors.white;
  static const Color satrancPassiveTextColor = Colors.black;
}
