import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final Widget
  destination; // this will store the location that the button will go to
  final String name;

  const NavButton({super.key, required this.destination, required this.name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFB6C1)),
      child: Text(name),
    );
  }
}
