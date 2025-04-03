import 'package:flutter/material.dart';
import 'package:test_1/componets/nav_button.dart';
import 'componets/text_box.dart';
import 'register.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
        child: Stack(
          // this makes a stack for the front page UI
          children: [
            Center(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, //centers the column
                children: [
                  // the username and password text fields
                  CustomBox(labelText: "Enter Username"),
                  CustomBox(labelText: "Enter Password"),
                  NavButton(destination: HomePage_1(), name: 'Login'),
                ],
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SecondRoute(),
                        ),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ), // makes the Register more bold
                      //giving the user an easier way of seeing it
                    ),
                  ),
                ],
              ), // takes you to the register page
            ),
          ],
        ),
      ),
    );
  }
}
