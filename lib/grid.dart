import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:firstproject/game.dart';
import 'libCell.dart';

class grid extends StatelessWidget {
  const grid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter GridView Demo"),
       // backgroundColor: Colors.red,
      ),
      body: GridView.builder(
          itemCount: games.length,
          itemBuilder: (context, index) {
            return libCell(games[index]);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0)),
    ));
  }
} //var

final List<Game> games = [
  Game("dmc5.jpg", "Devil May Cry 5", 200),
  Game("fifa.jpg", "Fifa 22", 220),
  Game("minecraft.jpg", "Minecraft", 150),
  Game("nfs.jpg", "Need For Speed", 100),
  Game("rdr2.jpg", "Red Dead 2", 150),
  Game("re8.jpg", "Resident Evil 8", 120)
];
List<String> images = [
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
];
