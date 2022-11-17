import 'package:flutter/material.dart';
import 'package:firstproject/game.dart';

class libCell extends StatelessWidget {
  //var
  final Game mGame;

  const libCell(this.mGame, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "Assets/${mGame.image}",
              width: 240,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                mGame.title,
                style: const TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
