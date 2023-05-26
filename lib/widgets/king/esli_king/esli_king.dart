import 'package:flutter/material.dart';

import '../../../const_names.dart';

class EsliKing extends StatelessWidget {
  const EsliKing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eşli King"),
      ),
      body: const Center(
        child: Text(ConstNames.tamamlanmadi),
      ),
    );
  }
}
