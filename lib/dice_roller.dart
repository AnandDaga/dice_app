import 'package:flutter/material.dart';
import 'dart:math';

final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 1; //global class declaration.
  void rollDice() {
    setState(() {
      diceRoll = randomiser.nextInt(6) + 1;
    });
  } // this setState() is defined State based class.
  // {} is annonyms function

  @override
  Widget build(context) {
    //
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceRoll.png',
          width: 150,
        ),
        const SizedBox(
          height: 69.0,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.all(17.0
            //   // bottom:20,
            //   // top:20,
            //   // right:15,
            //   // left:15,
            // ),
            foregroundColor: Colors.yellow,
            textStyle: const TextStyle(fontSize: 25.0),
          ),
          child: const Text("Roll dice"),
        ),
      ],
    );
  }
}
