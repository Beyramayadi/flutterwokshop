import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

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
                    padding: const EdgeInsets.all(15.0),
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
                        border: OutlineInputBorder(), labelText: 'Email'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mot de passe'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Année de naissance'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Année de facturation'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      //  padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.blue),
                              minimumSize:
                                  MaterialStateProperty.all<Size>(Size(40, 40)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'S\'inscrire',
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.blue),
                              minimumSize:
                                  MaterialStateProperty.all<Size>(Size(40, 40)),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Annuler',
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      )),
                ],
              )
              //child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu sapien ac lacus vehicula venenatis vel sit amet odio. Sed nisl nibh, ullamcorper nec quam id, viverra molestie nisi. Suspendisse porta eros sit amet tristique auctor. Nullam commodo, mauris sit amet tincidunt blandit, ex neque lobortis est, finibus commodo augue neque in ante. Ut ultrices lorem eget est tincidunt ullamcorper. Nullam bibendum erat vitae justo fermentum vestibulum eu ac tellus. Aliquam erat volutpat.'),

              )),
    );
  }
}
