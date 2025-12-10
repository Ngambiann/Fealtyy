import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        style:TextStyle(
            color: Colors.black87, fontSize: 25.sp, fontWeight: FontWeight.w500),
      ),
    );
  }
}
