import 'package:flutter/material.dart';

import '../../../../const_names.dart';
import '../tekli_king_oyun.dart';

class TabloIsimHucresi extends StatefulWidget {
  TabloIsimHucresi({
    super.key,
    required this.widget,
    required this.textColor,
    required this.oyuncu,
    required this.onTap,
    required this.isPlayerActive,
  });

  final TekliKingOyun widget;
  final String oyuncu;
  final Color textColor;
  final VoidCallback onTap;
  final bool isPlayerActive;

  @override
  State<TabloIsimHucresi> createState() => _TabloIsimHucresiState();
}

class _TabloIsimHucresiState extends State<TabloIsimHucresi> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          margin: EdgeInsets.only(bottom: 4, left: 2, top: 5, right: 5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(10),
              color: ConstNames.satrancActiveColor),
          child: Center(
            child: Text(
              widget.oyuncu,
              style: TextStyle(
                color: widget.textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
