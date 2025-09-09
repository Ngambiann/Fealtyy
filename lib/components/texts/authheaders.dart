import 'package:flutter/material.dart';

class Authheaders extends StatelessWidget {
  final String textcontent;
  const Authheaders({super.key, required this.textcontent});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      textcontent,
      style:const  TextStyle(
              color: Colors.black87, fontSize: 51, fontWeight: FontWeight.bold),
    );
  }
}
