import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  final String buttonname;
  final VoidCallback onPressed;
  const ContinueButton({
    super.key,
    required this.onPressed,
    required this.buttonname,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Color.fromARGB(255, 90, 166, 159),
        ),
      ),
      //Buttonname could be Save or next
      child: Text(buttonname, style: const TextStyle(color: Colors.black)),
    );
  }
}

class Previousbutton extends StatelessWidget {
  final String buttonname;
  final VoidCallback onPressed;
  const Previousbutton({
    super.key,
    required this.onPressed,
    required this.buttonname
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Color.fromARGB(255, 90, 166, 159),
        ),
      ),
      child: Text(buttonname, style: const TextStyle(color: Colors.black)),
    );
  }
}
