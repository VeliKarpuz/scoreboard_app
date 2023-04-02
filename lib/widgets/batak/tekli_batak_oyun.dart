// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';

class TekliBatakOyun extends StatefulWidget {
  final String oyuncu1;
  const TekliBatakOyun({required this.oyuncu1, super.key});

  @override
  State<TekliBatakOyun> createState() => _TekliBatakOyunState();
}

class _TekliBatakOyunState extends State<TekliBatakOyun> {
  int selectedIndex = 0;
  List<int> puan = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => showDialog<dynamic>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text(widget.oyuncu1),
                  content: Text('AlertDialog description'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
          child: Icon(Icons.add)),
      backgroundColor: Color.fromARGB(248, 228, 187, 197),
      appBar: AppBar(
        title: const Text(ConstNames.tekliBatak),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(children: [
          Expanded(
            child: SizedBox(
              child: Column(
                children: [
                  Text(widget.oyuncu1),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Toplam Puan"),
                  Expanded(
                    child: Container(
                      // width: 100,
                      child: ListView.builder(
                        itemBuilder: (context, index) =>
                            Card(child: Text("data")),
                        itemCount: 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
