import 'package:flutter/material.dart';
import 'package:scoreboard_app/const_names.dart';

class SabitOyunAdi extends StatelessWidget {
  SabitOyunAdi({
    required this.isim,
  });

  final String isim;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        margin: EdgeInsets.all(3),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(5),
          color: ConstNames.satrancActiveColor,
        ),
        child: Center(
          child: Text(
            isim,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
