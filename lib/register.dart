import 'package:flutter/material.dart';
import 'componets/text_box.dart';
import 'componets/nav_button.dart';
import 'main.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xFFFF5858), // This is the base pinkish tone
              Color(0xFFFFC8C8),
            ], //
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomBox(labelText: "Enter Username"),
              CustomBox(labelText: "Enter Password"),
              CustomBox(labelText: "Re-Enter Password"),
              CustomBox(labelText: "Enter Female or Male"),
              NavButton(destination: MyHomePage(), name: "register"),

              // Add more text boxes or widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}
