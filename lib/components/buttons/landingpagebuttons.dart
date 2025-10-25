import 'package:flutter/material.dart';

class Landingpagebuttons extends StatelessWidget {
  final String buttonname;
  final VoidCallback onPressed;
  const Landingpagebuttons({super.key, required this.onPressed,required this.buttonname});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.teal)),
      child:  Text(
        buttonname,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
