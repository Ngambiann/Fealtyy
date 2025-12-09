import 'package:flutter/material.dart';

class Setupbuttons extends StatelessWidget {
  final String buttonname;
  final VoidCallback onPressed;
  const Setupbuttons({super.key,required this.onPressed,required this.buttonname});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 90, 166, 159))),
      child:  Text(
        buttonname,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}