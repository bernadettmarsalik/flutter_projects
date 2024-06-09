import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  // itt azért kell const hiába változik az értéke de van másik class is amit használunk

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// a state-hez szükséges külön osztály létrehozása.
// a "_" azt jelenti Dart-ban hogy private azaz más osztály nem fér hozzá csak a DiceRoller!
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +
          1; //0-5ig generál a 6-ossal ezért adok hozzá 1-et
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                backgroundColor: Colors.cyan,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
