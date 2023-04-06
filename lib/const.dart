class ConstNames {
  static const String title = "Scoreboard";
  static const String tamamlanmadi = "Henüz Tamamlanmadı";
  static const String batak = "Batak";
  static const String king = "King";
  static const String okey = "Okey";
  static const String satranc = "Satranç";
  static const String esliBatak = "Eşli Batak";
  static const String tekliBatak = "Tekli Batak";
  // ignore: constant_identifier_names
  static const String UcBesSekiz = "Üç Beş Sekiz";
  static const String kaydet = "Kaydet";
  static int topla(List<int> list) {
    int toplam = 0;
    for (int i = 0; i < list.length; i++) {
      toplam = toplam + list[i];
    }
    return toplam;
  }
}
