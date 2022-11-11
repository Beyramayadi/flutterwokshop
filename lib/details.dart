import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Devil Man Cry 5'),
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Image.asset("assets/dmc5.jpg"),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu sapien ac lacus vehicula venenatis vel sit amet odio. Sed nisl nibh, ullamcorper nec quam id, viverra molestie nisi. Suspendisse porta eros sit amet tristique auctor. Nullam commodo, mauris sit amet tincidunt blandit, ex neque lobortis est, finibus commodo augue neque in ante. Ut ultrices lorem eget est tincidunt ullamcorper. Nullam bibendum erat vitae justo fermentum vestibulum eu ac tellus. Aliquam erat volutpat'),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                  ),
                  Text(
                    '200 TND',
                    style: const TextStyle(color: Colors.black, fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      minimumSize:
                          MaterialStateProperty.all<Size>(Size(200, 50)),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      // <-- Icon
                      Icons.shopping_cart,
                      size: 24.0,
                    ),
                    label: Text(
                      'Acheter',
                      style: const TextStyle(fontSize: 20),
                    ),
                  )
                ],
              )
              //child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu sapien ac lacus vehicula venenatis vel sit amet odio. Sed nisl nibh, ullamcorper nec quam id, viverra molestie nisi. Suspendisse porta eros sit amet tristique auctor. Nullam commodo, mauris sit amet tincidunt blandit, ex neque lobortis est, finibus commodo augue neque in ante. Ut ultrices lorem eget est tincidunt ullamcorper. Nullam bibendum erat vitae justo fermentum vestibulum eu ac tellus. Aliquam erat volutpat.'),

              )),
    );
  }
}
