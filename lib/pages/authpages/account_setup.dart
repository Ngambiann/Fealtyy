import 'package:fealty_app/components/textfields/authtextfields.dart';
import 'package:fealty_app/components/texts/authtexts.dart';
import 'package:flutter/material.dart';



class Accountsetup extends StatefulWidget {
  const Accountsetup({super.key});

  @override
  State<Accountsetup> createState() => _AccountsetupState();
}

class _AccountsetupState extends State<Accountsetup> {
  final TextEditingController propertyNameController = TextEditingController();
  final TextEditingController propertyCapacityController =
      TextEditingController();
  final TextEditingController unitNamingsystemController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundart2.png"),
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
                    Authheaders(textcontent: "Setup your"),
                    Authheaders(textcontent: "Account:"),
                  ],
                ),
                const SizedBox(height: 130),
                //Email entry box
                Authtextfields(
                  controller: propertyNameController,
                  hintText: "Property name",
                ),
                const SizedBox(height: 25),
                //Password entry box
                Authtextfields(
                  controller: propertyCapacityController,
                  hintText: "Property capacity",
                ),
                const SizedBox(height: 55),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
