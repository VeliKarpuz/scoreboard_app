import 'package:flutter/material.dart';
import '../../../../const_names.dart';

class ScoreTitle extends StatelessWidget {
  const ScoreTitle({
    super.key,
    required this.gameName,
  });
  final String gameName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.2,
      child: Container(
        padding: ConstNames.kingOrtaObje,
        margin: ConstNames.kingOrtaObje,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ConstNames.satrancActiveColor,
        ),
        child: Center(
          child: Text(
            gameName,
            style: const TextStyle(color: ConstNames.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
