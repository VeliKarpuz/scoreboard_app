import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';
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
              Expanded(child: SizedBox()),
              TabloIsimHucresi(
                onTap: () {},
                widget: widget,
                textColor: Colors.white,
                oyuncu: widget.oyuncu1,
                isPlayerActive: false,
              ),
              TabloIsimHucresi(
                onTap: () {},
                widget: widget,
                textColor: Colors.white,
                oyuncu: widget.oyuncu2,
                isPlayerActive: false,
              ),
              TabloIsimHucresi(
                onTap: () {},
                widget: widget,
                textColor: Colors.white,
                oyuncu: widget.oyuncu3,
                isPlayerActive: false,
              ),
              TabloIsimHucresi(
                onTap: () {},
                widget: widget,
                textColor: Colors.white,
                oyuncu: widget.oyuncu4,
                isPlayerActive: false,
              ),
            ],
          ),
          Row(
            children: [
              TabloOyunHucresi(
                isim: "SON İKİ",
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
              TabloOyunHucresi(isim: "Kozlar"),
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
              TabloOyunHucresi(isim: "TOPLAM CEZA"),
              TabloToplamSkorHucresi(skor: -4000),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
            ],
          ),
          Row(
            children: [
              TabloOyunHucresi(isim: "TOPLAM KOZ"),
              TabloToplamSkorHucresi(skor: -4000),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
            ],
          ),
          Row(
            children: [
              TabloOyunHucresi(isim: "TOPLAM SKOR"),
              TabloToplamSkorHucresi(skor: -4000),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
              TabloToplamSkorHucresi(skor: 0),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isGameStart == false ? isPlayerChosingActive = true : false;
                isGameStart = true;
              });
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
