import 'package:fealty_app/components/buttons/authpgsbuttons.dart';
import 'package:fealty_app/components/textfields/authtextfields.dart';
import 'package:fealty_app/components/texts/authtexts.dart';
import 'package:fealty_app/pages/authpages/authcode.dart';
import 'package:fealty_app/pages/authpages/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundArt.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //header text
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Authheaders(textcontent: "Welcome"),
                    Authheaders(textcontent: "Back!"),
                  ],
                ),
                SizedBox(height: 130.h),
                //Email entry box
                Authtextfields(
                  controller: emailAddressController,
                  hintText: "Email address",
                ),
                SizedBox(height: 25.h),
                //Password entry box
                Authtextfields(
                  controller: passwordController,
                  hintText: "Password",
                ),
                SizedBox(height: 55.h),
                //Send code button
                Authpgsbuttons(
                  buttonname: "Send code",
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Authcode()),
                    );
                  },
                ),
                SizedBox(height: 10.h),
                //Sign up option
                Routingtexts(
                  actiontext: "Signup",
                  leadingtext: "Don't have an account?",
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
