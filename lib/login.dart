import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Image.asset("assets/minecraft.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(70.0),
                  ),
                  // ignore: prefer_const_constructors
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Username'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Password'),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 7, 96, 238)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(200, 40)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'S' 'identifier',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 242, 17, 17)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(200, 40)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Créer un compte',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      "Mot de pase oublié ? Cliquez ici !",
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ],
              )
              //child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu sapien ac lacus vehicula venenatis vel sit amet odio. Sed nisl nibh, ullamcorper nec quam id, viverra molestie nisi. Suspendisse porta eros sit amet tristique auctor. Nullam commodo, mauris sit amet tincidunt blandit, ex neque lobortis est, finibus commodo augue neque in ante. Ut ultrices lorem eget est tincidunt ullamcorper. Nullam bibendum erat vitae justo fermentum vestibulum eu ac tellus. Aliquam erat volutpat.'),

              )),
    );
  }
}
