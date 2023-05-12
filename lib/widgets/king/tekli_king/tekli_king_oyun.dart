import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tablo_hucre_widgets/sabit_oyun_adi.dart';
import 'package:scoreboard_app/widgets/king/tekli_king/tablo_hucre_widgets/tablo_toplam_skor_hucresi.dart';
import 'tablo_hucre_widgets/tablo_ceza_puan_hucresi.dart';
import 'tablo_hucre_widgets/tablo_isim_hucresi.dart';
import 'tablo_hucre_widgets/tablo_koz_puan_hucresi.dart';
import 'tablo_hucre_widgets/tablo_oyun_hucresi.dart';

class TekliKingOyun extends StatefulWidget {
  TekliKingOyun(
      {super.key,
      required this.oyuncu1,
      required this.oyuncu2,
      required this.oyuncu3,
      required this.oyuncu4});

  final String oyuncu1, oyuncu2, oyuncu3, oyuncu4;

  @override
  State<TekliKingOyun> createState() => _TekliKingOyunState();
}

class _TekliKingOyunState extends State<TekliKingOyun> {
  bool isGameStart = false;
  bool isPlayerChosingActive = false;
  bool isGameChoosingActive = false;
  var oyuncu1 = TabloIsimHucresi(
    backgroundColor: Colors.white,
    isPlayerActive: false,
    oyuncu: "",
    onTap: () {},
  );
  var oyuncu2 = TabloIsimHucresi(
    backgroundColor: Colors.white,
    isPlayerActive: false,
    oyuncu: "",
    onTap: () {},
  );
  var oyuncu3 = TabloIsimHucresi(
    backgroundColor: Colors.white,
    isPlayerActive: false,
    oyuncu: "",
    onTap: () {},
  );
  var oyuncu4 = TabloIsimHucresi(
    backgroundColor: Colors.white,
    isPlayerActive: false,
    oyuncu: "",
    onTap: () {},
  );
  var soniki = TabloOyunHucresi(
    isim: "SON İKİ",
    backgroundColor: Colors.white,
    onTap: () {},
    isGameActive: false,
  );
  var kiz = TabloOyunHucresi(
    isim: "SON İKİ",
    backgroundColor: Colors.white,
    onTap: () {},
    isGameActive: false,
  );
  var erkek = TabloOyunHucresi(
    isim: "SON İKİ",
    backgroundColor: Colors.white,
    onTap: () {},
    isGameActive: false,
  );
  var kupa = TabloOyunHucresi(
    isim: "SON İKİ",
    backgroundColor: Colors.white,
    onTap: () {},
    isGameActive: false,
  );
  var rifki = TabloOyunHucresi(
    isim: "SON İKİ",
    backgroundColor: Colors.white,
    onTap: () {},
    isGameActive: false,
  );
  var el = TabloOyunHucresi(
    isim: "SON İKİ",
    backgroundColor: Colors.white,
    onTap: () {},
    isGameActive: false,
  );
  var kozlar = TabloOyunHucresi(
    isim: "SON İKİ",
    backgroundColor: Colors.white,
    onTap: () {},
    isGameActive: false,
  );

  kimbasliyor(TabloIsimHucresi widget) {
    if (isPlayerChosingActive) {
      setState(() {
        widget.isPlayerActive = true;
        isPlayerChosingActive = false;
      });
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.tekliKing),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              oyuncu1 = TabloIsimHucresi(
                isPlayerActive: false,
                oyuncu: widget.oyuncu1,
                backgroundColor: (isPlayerChosingActive == true
                    ? ConstNames.green
                    : oyuncu1.isPlayerActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor),
                onTap: () {
                  kimbasliyor(oyuncu1);
                },
              ),
              oyuncu2 = TabloIsimHucresi(
                isPlayerActive: false,
                oyuncu: widget.oyuncu2,
                backgroundColor: (isPlayerChosingActive == true
                    ? ConstNames.green
                    : oyuncu2.isPlayerActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor),
                onTap: () {
                  kimbasliyor(oyuncu2);
                },
              ),
              oyuncu3 = TabloIsimHucresi(
                isPlayerActive: false,
                oyuncu: widget.oyuncu3,
                backgroundColor: (isPlayerChosingActive == true
                    ? ConstNames.green
                    : oyuncu3.isPlayerActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor),
                onTap: () {
                  kimbasliyor(oyuncu3);
                },
              ),
              oyuncu4 = TabloIsimHucresi(
                isPlayerActive: false,
                oyuncu: widget.oyuncu4,
                backgroundColor: (isPlayerChosingActive == true
                    ? ConstNames.green
                    : oyuncu4.isPlayerActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor),
                onTap: () {
                  kimbasliyor(oyuncu4);
                },
              ),
            ],
          ),
          Row(
            children: [
              soniki = TabloOyunHucresi(
                isim: "SON İKİ",
                backgroundColor: isGameChoosingActive == true
                    ? ConstNames.green
                    : soniki.isGameActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor,
                isGameActive: false,
                onTap: () {
                  soniki.isGameActive = true;
                  isGameChoosingActive = false;
                },
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              TabloOyunHucresi(
                backgroundColor: isGameChoosingActive == true
                    ? ConstNames.green
                    : soniki.isGameActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor,
                isGameActive: false,
                onTap: () {
                  soniki.isGameActive = true;
                  isGameChoosingActive = false;
                },
                isim: "KIZ",
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              TabloOyunHucresi(
                isim: "ERKEK",
                backgroundColor: isGameChoosingActive == true
                    ? ConstNames.green
                    : soniki.isGameActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor,
                isGameActive: false,
                onTap: () {
                  soniki.isGameActive = true;
                  isGameChoosingActive = false;
                },
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              TabloOyunHucresi(
                backgroundColor: isGameChoosingActive == true
                    ? ConstNames.green
                    : soniki.isGameActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor,
                isGameActive: false,
                onTap: () {
                  soniki.isGameActive = true;
                  isGameChoosingActive = false;
                },
                isim: "KUPA",
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              TabloOyunHucresi(
                isim: "RIFKI",
                backgroundColor: isGameChoosingActive == true
                    ? ConstNames.green
                    : soniki.isGameActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor,
                isGameActive: false,
                onTap: () {
                  soniki.isGameActive = true;
                  isGameChoosingActive = false;
                },
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              TabloOyunHucresi(
                isim: "EL",
                backgroundColor: isGameChoosingActive == true
                    ? ConstNames.green
                    : soniki.isGameActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor,
                isGameActive: false,
                onTap: () {
                  soniki.isGameActive = true;
                  isGameChoosingActive = false;
                },
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
              TabloCezaPuanHucresi(
                backgroundColor: Colors.orange,
                ceza1: 3,
                ceza2: 5,
                textColor: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              TabloOyunHucresi(
                isim: "Kozlar",
                backgroundColor: isGameChoosingActive == true
                    ? ConstNames.green
                    : soniki.isGameActive == true
                        ? ConstNames.green
                        : ConstNames.satrancActiveColor,
                isGameActive: false,
                onTap: () {
                  soniki.isGameActive = true;
                  isGameChoosingActive = false;
                },
              ),
              TabloKozPuanHucresi(
                puan1: 0,
                puan2: 0,
                puan3: 0,
                puan4: 0,
                puan5: 0,
                puan6: 0,
                puan7: 0,
                puan8: 0,
              ),
              TabloKozPuanHucresi(
                puan1: 0,
                puan2: 0,
                puan3: 0,
                puan4: 0,
                puan5: 0,
                puan6: 0,
                puan7: 0,
                puan8: 0,
              ),
              TabloKozPuanHucresi(
                puan1: 0,
                puan2: 0,
                puan3: 0,
                puan4: 0,
                puan5: 0,
                puan6: 0,
                puan7: 0,
                puan8: 0,
              ),
              TabloKozPuanHucresi(
                puan1: 0,
                puan2: 0,
                puan3: 0,
                puan4: 0,
                puan5: 0,
                puan6: 0,
                puan7: 0,
                puan8: 0,
              ),
            ],
          ),
          Row(
            children: [
              SabitOyunAdi(isim: "TOPLAM CEZA"),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
            ],
          ),
          Row(
            children: [
              SabitOyunAdi(isim: "TOPLAM KOZ"),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
            ],
          ),
          Row(
            children: [
              SabitOyunAdi(isim: "TOPLAM SKOR"),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              if (!isGameStart) {
                setState(() {
                  isPlayerChosingActive = true;
                  isGameStart = true;
                });
              } else {
                setState(() {
                  isGameChoosingActive == true;
                });
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: isGameStart == false ? Text("Kim Başlıyor?") : Text("Devam"),
          )
        ],
      ),
    );
  }
}
