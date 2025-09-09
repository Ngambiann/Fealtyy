
import 'package:fealty_app/components/buttons/authpgsbuttons.dart';
import 'package:fealty_app/components/textfields/authtextfields.dart';
import 'package:fealty_app/components/texts/authheaders.dart';
import 'package:fealty_app/pages/authpages/authcode.dart';
import 'package:fealty_app/pages/authpages/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(35),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundart2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: [
          Column(
            children: [
//Header texts
              const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Authheaders(textcontent: "Create "),
                  Authheaders(textcontent: "Account:"),
                ],
              ),
              const SizedBox(
                height: 55,
              ),
//name entry box
              Authtextfields(
                  controller: nameController,
                  hintText: "Full name/Company name"),
              const SizedBox(
                height: 25,
              ),
//Email entry box
              Authtextfields(
                  controller: emailAddressController,
                  hintText: "Email Address"),
              const SizedBox(
                height: 25,
              ),
//Password entry box
              Authtextfields(
                  controller: passwordController, hintText: "Password"),
              const SizedBox(
                height: 35,
              ),
//Send code button
              Authpgsbuttons(
                  buttonname: "Send Code",
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const Authcode()));
                  }),
//Sign in option
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?",style: TextStyle(color: Colors.black),),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Login()));
                  }, child: const Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),))
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
