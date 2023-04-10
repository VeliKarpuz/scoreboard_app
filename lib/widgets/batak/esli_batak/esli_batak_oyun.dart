import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/common_widgets/puan.dart';
import 'package:scoreboard_app/widgets/common_widgets/score_column.dart';
import 'package:scoreboard_app/widgets/common_widgets/score_entry_row.dart';

class EsliBatakOyun extends StatefulWidget {
  final String takim1;
  final String takim2;
  EsliBatakOyun({
    required this.takim1,
    required this.takim2,
  });

  @override
  State<EsliBatakOyun> createState() => _EsliBatakOyunState();
}

class _EsliBatakOyunState extends State<EsliBatakOyun> {
  List<int> takim1Puan = [];
  List<int> takim2Puan = [];
  Puan puan1 = Puan();
  Puan puan2 = Puan();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingScoreEntry(context),
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
        title: const Text(ConstNames.esliBatak),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            ScoreColumn(
              name: widget.takim1,
              oyuncuPuan: takim1Puan,
              toplamPuan: ConstNames.topla(takim1Puan),
            ),
            ScoreColumn(
              name: widget.takim2,
              oyuncuPuan: takim2Puan,
              toplamPuan: ConstNames.topla(takim2Puan),
            ),
          ],
        ),
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
              takim1Puan.clear();
              takim2Puan.clear();
              setState(() {});
            },
            child: const Text('Devam'),
          ),
        ],
      ),
    );
  }

  FloatingActionButton floatingScoreEntry(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog<dynamic>(
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
                    oyuncu: widget.takim1,
                  ),
                  ScoreEntryRow(
                    widget: widget,
                    puan: puan2,
                    oyuncu: widget.takim2,
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
                  setState(() {});
                },
                child: const Text('Vazgeç'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  takim1Puan.add(puan1.selectedScore);
                  takim2Puan.add(puan2.selectedScore);
                  setState(() {});
                  puan1.selectedScore = 0;
                  puan2.selectedScore = 0;
                },
                child: const Text('Kaydet'),
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
