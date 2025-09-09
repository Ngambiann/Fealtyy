import 'package:flutter/material.dart';

class Authtextfields extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final  controller;
  final String hintText;
  const Authtextfields({super.key,required this.controller,required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
    decoration: InputDecoration(
      hintStyle: const TextStyle(color: Colors.black87),
      hintText: hintText,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
    ),
      controller: controller,
    );
  }
}