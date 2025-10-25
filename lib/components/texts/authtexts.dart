import 'package:flutter/material.dart';

class Authheaders extends StatelessWidget {
  final String textcontent;
  const Authheaders({super.key, required this.textcontent});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      textcontent,
      style: const TextStyle(
        color: Colors.black87,
        fontSize: 51,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Routingtexts extends StatelessWidget {
  final String leadingtext;
  final String actiontext;
  final VoidCallback onPressed;
  const Routingtexts({
    super.key,
    required this.actiontext,
    required this.leadingtext,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(leadingtext, style: TextStyle(color: Colors.black)),
        TextButton(
          onPressed: onPressed,
          child: Text(
            actiontext,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          ),
        ),
      ],
    );
  }
}
