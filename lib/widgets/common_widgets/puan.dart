// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class Puan extends StatefulWidget {
  Puan({super.key, required this.minScore});
  int selectedScore = 0;
  final int minScore;
  @override
  State<Puan> createState() => _PuanState();
}

class _PuanState extends State<Puan> {
  scoreChange(bool plus) {
    plus == true && widget.selectedScore <= 12 ? widget.selectedScore++ : null;
    plus == false && widget.selectedScore >= widget.minScore
        ? widget.selectedScore--
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(30, 30),
              maximumSize: const Size(50, 50),
            ),
            onPressed: () {
              setState(() {
                scoreChange(true);
              });
            },
            child: const Icon(Icons.add),
          ),
          SizedBox(
            width: 40,
            child: Center(
              child: Text(widget.selectedScore.toString()),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(30, 30),
              maximumSize: const Size(50, 50),
            ),
            onPressed: () {
              setState(() {
                scoreChange(false);
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
