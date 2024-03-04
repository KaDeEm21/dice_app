import 'dart:math';

import 'package:flutter/material.dart';

var currentDiceImage = 'assets/images/dice-2.png';
Random random = Random();




class Dice_roller extends StatefulWidget {
  const Dice_roller({super.key});

  @override
  State<Dice_roller> createState() => _Dice_rollerState();
}

class _Dice_rollerState extends State<Dice_roller> {

  void rollDice() {
    var randNum = random.nextInt(6)+1;
    setState(() {
      currentDiceImage = 'assets/images/dice-$randNum.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(currentDiceImage, width: 300,),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(foregroundColor: Colors.white),
          child: const Text(
          "ROLL DICE", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 40, color: Colors.white),
        ),
        ),
      ],
    );
  }
}
