import 'package:flutter/material.dart';

import '../../../../const_names.dart';

class TabloToplamSkorHucresi extends StatelessWidget {
  TabloToplamSkorHucresi({
    super.key,
    required this.skor,
  });

  final int skor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        margin: const EdgeInsets.only(bottom: 4, left: 2, top: 5, right: 5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(5),
            color: ConstNames.satrancActiveColor),
        child: Center(
          child: Text(
            skor.toString(),
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
