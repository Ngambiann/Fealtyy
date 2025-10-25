import 'package:fealty_app/components/buttons/authpgsbuttons.dart';
import 'package:fealty_app/components/texts/authtexts.dart';
import 'package:fealty_app/pages/mainpages/homepage.dart';
import 'package:flutter/material.dart';

class Authcode extends StatefulWidget {
  const Authcode({super.key});

  @override
  State<Authcode> createState() => _AuthcodeState();
}

class _AuthcodeState extends State<Authcode> {
  final List<TextEditingController> controllers = List.generate(
    5,
    (index) => TextEditingController(),
  );
  final List<FocusNode> focusNodes = List.generate(5, (index) => FocusNode());
  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

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
            //Header
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                const Authheaders(textcontent: "Enter code:"),
                const SizedBox(height: 50),
                //code boxes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(5, (index) {
                    return SizedBox(
                      width: 50,
                      child: TextField(
                        controller: controllers[index],
                        focusNode: focusNodes[index],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintStyle: const TextStyle(color: Colors.black87),
                        ),
                        onChanged: (value) {
                          if (value.length == 1 && index < 4) {
                            FocusScope.of(
                              context,
                            ).requestFocus(focusNodes[index + 1]);
                          } else if (value.isEmpty && index > 0) {
                            FocusScope.of(
                              context,
                            ).requestFocus(focusNodes[index - 1]);
                          }
                        },
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 50),
                Authpgsbuttons(
                  buttonname: "Continue",
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                ),
                Routingtexts(actiontext:"Resend code" , leadingtext: "Code not sent?", onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Authcode(),
                          ),
                        );
                      },)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
