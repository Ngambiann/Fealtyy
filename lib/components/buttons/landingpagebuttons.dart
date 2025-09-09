import 'package:flutter/material.dart';

class Landingpagebuttons extends StatelessWidget {
  final String buttonname;
  // ignore: prefer_typing_uninitialized_variables
  final onpressed;
  const Landingpagebuttons({super.key, required this.onpressed,required this.buttonname});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.teal)),
      child:  Text(
        buttonname,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
