// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/puan.dart';

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

  int topla(List<int> list) {
    int toplam = 0;
    for (int i = 0; i < list.length; i++) {
      toplam = toplam + list[i];
    }
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => newMethod(context), child: Icon(Icons.add)),
      backgroundColor: Color.fromARGB(248, 228, 187, 197),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Yeni Oyun'),
                  content: const Text(
                      'Bu oyun silinecek ve yeni bir oyun başlatılacak. Devam etmek istiyor musunuz?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Vazgeç'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'OK');
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
            },
            icon: Icon(FontAwesomeIcons.arrowsRotate),
          )
        ],
        title: const Text(ConstNames.tekliBatak),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(children: [
          ScoreColumn(
            name: widget.oyuncu1,
            toplamPuan: topla(oyuncu1Puan),
            oyuncuPuan: oyuncu1Puan,
          ),
          ScoreColumn(
            name: widget.oyuncu2,
            toplamPuan: topla(oyuncu2Puan),
            oyuncuPuan: oyuncu2Puan,
          ),
          ScoreColumn(
            name: widget.oyuncu3,
            toplamPuan: topla(oyuncu3Puan),
            oyuncuPuan: oyuncu3Puan,
          ),
          ScoreColumn(
            name: widget.oyuncu4,
            toplamPuan: topla(oyuncu4Puan),
            oyuncuPuan: oyuncu4Puan,
          ),
        ]),
      ),
    );
  }

  Future<dynamic> newMethod(BuildContext context) {
    return showDialog<dynamic>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Center(child: const Text("Puanlar")),
        content: SizedBox(
          height: 300,
          child: Column(
            children: [
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.oyuncu1),
                    SizedBox(
                      child: puan1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.oyuncu2),
                    SizedBox(
                      child: puan2,
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.oyuncu3),
                    SizedBox(
                      child: puan3,
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.oyuncu4),
                    SizedBox(
                      child: puan4,
                    ),
                  ],
                ),
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
    Navigator.pop(context, 'Cancel');
    puan1.selectedScore = 0;
    puan2.selectedScore = 0;
    puan3.selectedScore = 0;
    puan4.selectedScore = 0;
    setState(() {});
  }

  void okMethod(BuildContext context) {
    Navigator.pop(context, 'OK');
    oyuncu1Puan.add(puan1.selectedScore);
    oyuncu2Puan.add(puan2.selectedScore);
    oyuncu3Puan.add(puan3.selectedScore);
    oyuncu4Puan.add(puan4.selectedScore);
    puan1.selectedScore = 0;
    puan2.selectedScore = 0;
    puan3.selectedScore = 0;
    puan4.selectedScore = 0;
    print(oyuncu2Puan);
    setState(() {});
  }
}

class ScoreColumn extends StatelessWidget {
  ScoreColumn({
    super.key,
    required this.name,
    required this.oyuncuPuan,
    required this.toplamPuan,
  });

  final String name;
  final List<int> oyuncuPuan;
  int toplamPuan = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Column(
          children: [
            Text(name),
            SizedBox(
              height: 10,
            ),
            Text(toplamPuan.toString()),
            Divider(thickness: 2, color: Colors.black),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    Divider(thickness: 1, endIndent: 10, color: Colors.black),
                itemBuilder: (context, index) => Center(
                  child: SizedBox(
                      height: 20, child: Text(oyuncuPuan[index].toString())),
                ),
                itemCount: oyuncuPuan.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
