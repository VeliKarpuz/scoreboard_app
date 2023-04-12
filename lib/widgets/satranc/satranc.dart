import 'package:flutter/material.dart';
import 'package:scoreboard_app/const.dart';
import 'package:scoreboard_app/widgets/common_widgets/my_card_list.dart';
import '../satranc/satranc_oyun.dart';

class Satranc extends StatelessWidget {
  final TextEditingController moveMinute = TextEditingController(text: "5");
  final TextEditingController moveSecond = TextEditingController(text: "3");

  Satranc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ConstNames.satranc),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            'Süre Ayarları',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                const Spacer(flex: 1),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        textInputAction: TextInputAction.next,
                        controller: moveMinute,
                        decoration: const InputDecoration(
                          labelText: "Dakika",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    )),
                const Spacer(flex: 1),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        textInputAction: TextInputAction.next,
                        controller: moveSecond,
                        decoration: const InputDecoration(
                          labelText: " + Saniye",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    )),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              navigatorPush(
                  context,
                  SatrancOyun(
                    moveSeconds: int.parse(moveSecond.text),
                    moveMinutes: int.parse(moveMinute.text),
                  ));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 123, 107, 160),
            ),
            child: const Text(ConstNames.kaydet),
          )
        ],
      ),
    );
  }
}
