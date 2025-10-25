import 'package:flutter/material.dart';

class Authpgsbuttons extends StatelessWidget {
  final String buttonname;
  final VoidCallback onPressed;
  const Authpgsbuttons(
      {super.key, required this.buttonname, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: const ButtonStyle(
        overlayColor: WidgetStatePropertyAll(Colors.teal),
      ),
      onPressed: onPressed,
      child: Text(
        buttonname,
        style: const TextStyle(
            color: Colors.black87, fontSize: 25, fontWeight: FontWeight.w500),
      ),
    );
  }
}
