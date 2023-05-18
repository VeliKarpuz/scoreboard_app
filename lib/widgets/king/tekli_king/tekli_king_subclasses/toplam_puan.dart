import 'package:flutter/material.dart';
import '../../../../const_names.dart';

class ToplamPuan extends StatelessWidget {
  const ToplamPuan({
    super.key,
    required this.puan,
  });
  final String puan;

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
            puan,
            style: const TextStyle(
                color: ConstNames.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
