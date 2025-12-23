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
      child: Text(buttonname, style: const TextStyle(color: Colors.black)),
    );
  }
}

class Paymentoptions extends StatelessWidget {
  final String buttonname;
  final VoidCallback onPressed;
  const Paymentoptions({
    super.key,
    required this.onPressed,
    required this.buttonname,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 332,
      height: 102,
      child: ElevatedButton(
        onPressed: onPressed,
        style:ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            Color.fromARGB(255, 155, 209, 203),
          ),
          shape: WidgetStatePropertyAll(
  RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
),
        ),
        
        child: Text(buttonname, style: const TextStyle(color: Colors.black,fontSize:25 )),
      ),
    );
  }
}
