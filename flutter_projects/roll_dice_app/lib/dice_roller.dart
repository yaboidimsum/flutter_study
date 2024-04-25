import 'package:flutter/material.dart';
import 'dart:math';

final randomizer =
    Random(); // Declared here so that it is only created once, not every change of the state

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize
          .min, // Align the children to the center, the column will take the minimum height
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xff4a4e69),
            backgroundColor: const Color(0xfff2e8cf),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          child: const Text('Roll the dice!'),
        )
      ],
    );
  }
}
