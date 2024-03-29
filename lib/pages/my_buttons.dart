import 'package:flutter/material.dart';

class myButtons extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  myButtons({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      color: Colors.white60,
    );
  }
}
