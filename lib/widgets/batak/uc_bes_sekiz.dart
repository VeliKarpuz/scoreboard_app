import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';

class UcBesSekiz extends StatefulWidget {
  const UcBesSekiz({super.key});

  @override
  State<UcBesSekiz> createState() => _UcBesSekizState();
}

class _UcBesSekizState extends State<UcBesSekiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.UcBesSekiz),
      ),
      body: const Center(
        child: Text(ConstNames.tamamlanmadi),
      ),
    );
  }
}
