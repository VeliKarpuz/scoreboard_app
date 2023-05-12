import 'package:flutter/material.dart';

import '../../../../const_names.dart';

class TabloOyunHucresi extends StatelessWidget {
  TabloOyunHucresi({
    required this.isim,
    required this.backgroundColor,
    required this.onTap,
    required this.isGameActive,
  });

  final String isim;
  final Color backgroundColor;
  final VoidCallback onTap;
  bool isGameActive;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          margin: EdgeInsets.all(3),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(5),
            color: backgroundColor,
          ),
          child: Center(
            child: Text(
              isim,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
