import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.editing,
    required this.playerName,
  });

  final TextEditingController editing;
  final String playerName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        maxLength: 10,
        textInputAction: TextInputAction.next,
        controller: editing,
        decoration: InputDecoration(
          labelText: playerName,
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 5),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
