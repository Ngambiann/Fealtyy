import 'package:flutter/material.dart';

class Setuptextfields extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const Setuptextfields({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: Colors.black38,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(17)),
      ),
      controller: controller,
    );
  }
}
