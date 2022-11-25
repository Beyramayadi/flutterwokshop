import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _loginState();
}

class _loginState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    late String username;
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Réinitialiser le mot de passe'),
      ),
      body: Form(
          key: formkey,
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Image.asset("assets/minecraft.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                  ),
                  // ignore: prefer_const_constructors
                  TextFormField(
                    onSaved: (newValue) {
                      username = newValue!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Le mot de passe ne doit pas être vide";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Mot de passe actuel'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  TextFormField(
                    onSaved: (newValue) {
                      username = newValue!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Le mot de passe ne doit pas être vide";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nouveaux mot de passe'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  TextFormField(
                    onSaved: (newValue) {
                      username = newValue!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "L'adresse ne doit pas etre vide";
                      }
                    },
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 50.0, horizontal: 10.0),
                        border: OutlineInputBorder(),
                        labelText: 'Adresse de facturation'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),

                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.blue),
                      minimumSize: MaterialStateProperty.all<Size>(
                          Size(MediaQuery.of(context).size.width, 40)),
                    ),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Info"),
                                content: Text(" Username: $username"),
                              );
                            });
                      }
                    },
                    child: const Text(
                      'Enregistrer',
                      style: const TextStyle(fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                  ),
                ],
              )
              //child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu sapien ac lacus vehicula venenatis vel sit amet odio. Sed nisl nibh, ullamcorper nec quam id, viverra molestie nisi. Suspendisse porta eros sit amet tristique auctor. Nullam commodo, mauris sit amet tincidunt blandit, ex neque lobortis est, finibus commodo augue neque in ante. Ut ultrices lorem eget est tincidunt ullamcorper. Nullam bibendum erat vitae justo fermentum vestibulum eu ac tellus. Aliquam erat volutpat.'),

              )),
    );
  }
}
