
import 'package:fealty_app/components/buttons/landingpagebuttons.dart';
import 'package:fealty_app/pages/authpages/login.dart';
import 'package:fealty_app/pages/authpages/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
      //logo image
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Fealty.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //Slogan text
            Text(
              '"Loyalty in property management"',
              style: TextStyle(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Signup button
                Landingpagebuttons(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Signup()));
                    },
                    buttonname: "Sign up"),
                SizedBox(width: 50.w),
                //Login button
                Landingpagebuttons(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Login()));
                    },
                    buttonname: "Login")
              ],
            ),
         SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
