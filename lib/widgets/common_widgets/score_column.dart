// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class ScoreColumn extends StatelessWidget {
  ScoreColumn({
    super.key,
    required this.name,
    required this.oyuncuPuan,
    required this.toplamPuan,
  });

  final String name;
  final List<int> oyuncuPuan;
  int toplamPuan = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Column(
          children: [
            Text(name),
            const SizedBox(
              height: 10,
            ),
            Text(toplamPuan.toString()),
            const Divider(thickness: 2, color: Colors.black),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => myDivider(),
                itemBuilder: (context, index) => Center(
                  child: SizedBox(
                      height: 20, child: Text(oyuncuPuan[index].toString())),
                ),
                itemCount: oyuncuPuan.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Divider myDivider() {
    return const Divider(
        thickness: 1, endIndent: 10, indent: 10, color: Colors.black);
  }
}
