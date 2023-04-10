import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/common%20widgets/puan.dart';
import 'package:scoreboard_app/widgets/common%20widgets/score_entry_row.dart';
import '../../common widgets/score_column.dart';

class TekliBatakOyun extends StatefulWidget {
  final String oyuncu1;
  final String oyuncu2;
  final String oyuncu3;
  final String oyuncu4;
  const TekliBatakOyun(
      {super.key,
      required this.oyuncu1,
      required this.oyuncu2,
      required this.oyuncu3,
      required this.oyuncu4});

  @override
  State<TekliBatakOyun> createState() => _TekliBatakOyunState();
}

class _TekliBatakOyunState extends State<TekliBatakOyun> {
  List<int> oyuncu1Puan = [];
  List<int> oyuncu2Puan = [];
  List<int> oyuncu3Puan = [];
  List<int> oyuncu4Puan = [];

  Puan puan1 = Puan();
  Puan puan2 = Puan();
  Puan puan3 = Puan();
  Puan puan4 = Puan();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => floatingScoreEntry(context),
          child: const Icon(Icons.add)),
      backgroundColor: const Color.fromARGB(248, 228, 187, 197),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              refreshButton(context);
            },
            icon: const Icon(FontAwesomeIcons.arrowsRotate),
          )
        ],
        title: const Text(ConstNames.tekliBatak),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(children: [
          ScoreColumn(
            name: widget.oyuncu1,
            toplamPuan: ConstNames.topla(oyuncu1Puan),
            oyuncuPuan: oyuncu1Puan,
          ),
          ScoreColumn(
            name: widget.oyuncu2,
            toplamPuan: ConstNames.topla(oyuncu2Puan),
            oyuncuPuan: oyuncu2Puan,
          ),
          ScoreColumn(
            name: widget.oyuncu3,
            toplamPuan: ConstNames.topla(oyuncu3Puan),
            oyuncuPuan: oyuncu3Puan,
          ),
          ScoreColumn(
            name: widget.oyuncu4,
            toplamPuan: ConstNames.topla(oyuncu4Puan),
            oyuncuPuan: oyuncu4Puan,
          ),
        ]),
      ),
    );
  }

  Future<String?> refreshButton(BuildContext context) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Yeni Oyun'),
        content: const Text(
            'Bu oyun silinecek ve yeni bir oyun başlatılacak. Devam etmek istiyor musunuz?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Vazgeç'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              oyuncu1Puan.clear();
              oyuncu2Puan.clear();
              oyuncu3Puan.clear();
              oyuncu4Puan.clear();
              setState(() {});
            },
            child: const Text('Devam'),
          ),
        ],
      ),
    );
  }

  Future<dynamic> floatingScoreEntry(BuildContext context) {
    return showDialog<dynamic>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Center(child: Text("Puanlar")),
        content: SizedBox(
          height: 300,
          child: Column(
            children: [
              ScoreEntryRow(
                widget: widget,
                puan: puan1,
                oyuncu: widget.oyuncu1,
              ),
              ScoreEntryRow(
                widget: widget,
                puan: puan2,
                oyuncu: widget.oyuncu2,
              ),
              ScoreEntryRow(
                widget: widget,
                puan: puan3,
                oyuncu: widget.oyuncu3,
              ),
              ScoreEntryRow(
                widget: widget,
                puan: puan4,
                oyuncu: widget.oyuncu4,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              cancelMethod(context);
            },
            child: const Text('Vazgeç'),
          ),
          TextButton(
            onPressed: () {
              okMethod(context);
            },
            child: const Text('Kaydet'),
          ),
        ],
      ),
    );
  }

  void cancelMethod(BuildContext context) {
    Navigator.pop(context);
    puan1.selectedScore = 0;
    puan2.selectedScore = 0;
    puan3.selectedScore = 0;
    puan4.selectedScore = 0;
    setState(() {});
  }

  void okMethod(BuildContext context) {
    Navigator.pop(context);
    oyuncu1Puan.add(puan1.selectedScore);
    oyuncu2Puan.add(puan2.selectedScore);
    oyuncu3Puan.add(puan3.selectedScore);
    oyuncu4Puan.add(puan4.selectedScore);
    puan1.selectedScore = 0;
    puan2.selectedScore = 0;
    puan3.selectedScore = 0;
    puan4.selectedScore = 0;
    setState(() {});
  }
}
