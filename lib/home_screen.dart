import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'cell.dart';

class screen extends StatelessWidget {
  const screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: const [
        Cell("dmc5.jpg", "Devil May Cry 5", 200),
        Cell("fifa.jpg", "Fifa 22", 220),
        Cell("minecraft.jpg", "Minecraft", 150),
        Cell("nfs.jpg", "Need For Speed", 100),
        Cell("rdr2.jpg", "Red Dead Redemption 2", 150)
      ]),
    );
  }
}
