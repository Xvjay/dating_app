import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String? labelText; /* this is where the text that you want to display 
  on the text box will be stored*/

  const CustomBox({super.key, this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFCCD9CF), // Soft White
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          labelText: labelText,
        ),
      ),
    );
  }
}
