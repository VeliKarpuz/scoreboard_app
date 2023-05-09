import 'package:flutter/material.dart';

class TabloIsimHucresi extends StatefulWidget {
  TabloIsimHucresi({
    this.backgroundColor,
    this.oyuncu,
    this.onTap,
    this.isPlayerActive,
  });

  final String? oyuncu;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  bool? isPlayerActive;

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
              color: widget.backgroundColor),
          child: Center(
            child: Text(
              widget.oyuncu ?? "",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
