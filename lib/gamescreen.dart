import 'dart:math';

import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 140, 167),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Dice Roller Game",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(240, 7, 255, 69),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Dice Roller",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 200.0,
              height: 200.0,
              child: Image.network(
                  "https://raw.githubusercontent.com/bishworajpoudelofficial/flutter_dice_roller/master/assets/$diceNumber.png"),
            ),
            SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                changeDice();
              },
              style: ElevatedButton.styleFrom(),
              child: Text(
                "Roll The Dice",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int diceNumber = 1;
  void changeDice() {
    Random random = Random();
    setState(() {
      diceNumber = random.nextInt(6) + 1;
    });
  }
}
