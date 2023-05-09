import 'package:flutter/material.dart';

class TabloKozPuanHucresi extends StatelessWidget {
  TabloKozPuanHucresi({
    required this.puan1,
    required this.puan2,
    required this.puan3,
    required this.puan4,
    required this.puan5,
    required this.puan6,
    required this.puan7,
    required this.puan8,
  });

  final int puan1, puan2, puan3, puan4, puan5, puan6, puan7, puan8;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        margin: EdgeInsets.all(3),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(5),
          color: Colors.orange,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "${puan1},${puan2},${puan3},${puan4}",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "${puan5},${puan6},${puan7},${puan8}",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
