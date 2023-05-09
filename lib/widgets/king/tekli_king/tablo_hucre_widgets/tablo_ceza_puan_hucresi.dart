import 'package:flutter/material.dart';

class TabloCezaPuanHucresi extends StatelessWidget {
  TabloCezaPuanHucresi({
    required this.ceza2,
    required this.backgroundColor,
    required this.ceza1,
    required this.textColor,
  });

  final Color textColor;
  final Color backgroundColor;
  final int ceza1;
  final int ceza2;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        margin: const EdgeInsets.all(3),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(5),
          color: backgroundColor,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                ceza1.toString(),
                style: TextStyle(color: textColor),
              ),
              Text(
                ceza2.toString(),
                style: TextStyle(color: textColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
