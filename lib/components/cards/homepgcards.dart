import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallCards extends StatelessWidget {
  final String cardTitle;
  final IconData icon;
  const SmallCards({super.key, required this.cardTitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardTitle,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),

                Icon(icon, color: Colors.black, size: 21),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'Details go here',
            style: TextStyle(color: Colors.black54, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
