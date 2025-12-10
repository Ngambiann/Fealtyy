import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetupHeaders extends StatelessWidget {
  final String textcontent;
  const SetupHeaders({super.key,required this.textcontent});

  @override
  Widget build(BuildContext context) {
    return Text(
      textcontent,
      textAlign: TextAlign.left,
      style:  TextStyle(
        color: Colors.black,
        fontSize: 35.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
class SetupFieldname extends StatelessWidget {
  final String textcontent;
  const SetupFieldname({super.key,required this.textcontent});

  @override
  Widget build(BuildContext context) {
    return Text(
      textcontent,
      textAlign: TextAlign.left,
      style:TextStyle(
        color: Colors.black87,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
