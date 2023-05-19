import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scoreboard_app/const_names.dart';
import 'package:scoreboard_app/widgets/common_widgets/puan.dart';
import 'package:scoreboard_app/widgets/common_widgets/score_column.dart';
import 'package:scoreboard_app/widgets/common_widgets/score_entry_row.dart';

class UcBesSekizOyun extends StatefulWidget {
  final String oyuncu1;
  final String oyuncu2;
  final String oyuncu3;
  const UcBesSekizOyun({
    required this.oyuncu1,
    required this.oyuncu2,
    required this.oyuncu3,
    super.key,
  });

  @override
  State<UcBesSekizOyun> createState() => _UcBesSekizOyunState();
}

class _UcBesSekizOyunState extends State<UcBesSekizOyun> {
  List<int> oyuncu1Puan = [];
  List<int> oyuncu2Puan = [];
  List<int> oyuncu3Puan = [];
  Puan puan1 = Puan(minScore: -12);
  Puan puan2 = Puan(minScore: -12);
  Puan puan3 = Puan(minScore: -12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingScoreEntry(context),
      appBar: AppBar(
        title: const Text(ConstNames.ucBesSekiz),
        actions: [
          IconButton(
            onPressed: () {
              refreshButton(context);
            },
            icon: const Icon(FontAwesomeIcons.arrowsRotate),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ScoreColumn(
              name: widget.oyuncu1,
              oyuncuPuan: oyuncu1Puan,
              toplamPuan: ConstNames.topla(oyuncu1Puan),
            ),
            ScoreColumn(
              name: widget.oyuncu2,
              oyuncuPuan: oyuncu2Puan,
              toplamPuan: ConstNames.topla(oyuncu2Puan),
            ),
            ScoreColumn(
              name: widget.oyuncu3,
              oyuncuPuan: oyuncu3Puan,
              toplamPuan: ConstNames.topla(oyuncu3Puan),
            )
          ],
        ),
      ),
    );
  }

  Future<String?> refreshButton(BuildContext context) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text(ConstNames.yeniOyun),
        content: const Text(ConstNames.yeniOyunText),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(ConstNames.vazgec),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              oyuncu1Puan.clear();
              oyuncu2Puan.clear();
              oyuncu3Puan.clear();
              setState(() {});
            },
            child: const Text(ConstNames.devam),
          ),
        ],
      ),
    );
  }

  FloatingActionButton floatingScoreEntry(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Center(
              child: Text(ConstNames.puanlar),
            ),
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
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  puan1.selectedScore = 0;
                  puan2.selectedScore = 0;
                  puan3.selectedScore = 0;
                  setState(() {});
                },
                child: const Text(ConstNames.vazgec),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  oyuncu1Puan.add(puan1.selectedScore);
                  oyuncu2Puan.add(puan2.selectedScore);
                  oyuncu3Puan.add(puan2.selectedScore);
                  setState(() {});
                  puan1.selectedScore = 0;
                  puan2.selectedScore = 0;
                  puan3.selectedScore = 0;
                },
                child: const Text(ConstNames.kaydet),
              ),
            ],
          ),
        );
      },
      child: const Icon(
        FontAwesomeIcons.plus,
      ),
    );
  }
}
