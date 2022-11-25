import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    late String username;
    late String password;
    GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
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
                        return "Veuillez entrer votre nom d'utilisateur";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Username'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  TextFormField(
                    onSaved: (newValue) {
                      password = newValue!;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Veuillez entrer votre mot de passe';
                      }
                    },
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
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Info"),
                                content: Text(
                                    "Password: $password \n Username: $username"),
                              );
                            });
                      }
                    },
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
                  Row(children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Text(
                      "Mot de pase oublié ? ",
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                    Text(
                      " Cliquez ici !",
                      style: const TextStyle(color: Colors.blue, fontSize: 15),
                    )
                  ]),
                ],
              )
              //child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu sapien ac lacus vehicula venenatis vel sit amet odio. Sed nisl nibh, ullamcorper nec quam id, viverra molestie nisi. Suspendisse porta eros sit amet tristique auctor. Nullam commodo, mauris sit amet tincidunt blandit, ex neque lobortis est, finibus commodo augue neque in ante. Ut ultrices lorem eget est tincidunt ullamcorper. Nullam bibendum erat vitae justo fermentum vestibulum eu ac tellus. Aliquam erat volutpat.'),

              )),
    );
  }
}
