import 'package:flutter/material.dart';

import '../../../../const_names.dart';

class TabloOyunHucresi extends StatelessWidget {
  TabloOyunHucresi({
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
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
