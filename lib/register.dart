import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        centerTitle: true,
        backgroundColor: const Color(0xFFFFB6C1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Welcome to the Registration Screen',
              style: TextStyle(fontSize: 20),
            ),
            // You can add your registration form or other widgets here.
          ],
        ),
      ),
    );
  }
}
