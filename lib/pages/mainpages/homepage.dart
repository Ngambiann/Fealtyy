import 'package:fealty_app/components/cards/homepgcards.dart';
import 'package:fealty_app/pages/secpages/notifications.dart';
import 'package:fealty_app/pages/secpages/profileview.dart';
import 'package:fealty_app/pages/secpages/settings.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(245, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(245, 255, 255, 255),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Profileview()),
              );
            },
            icon: const Icon(PhosphorIconsFill.userCircle),
          ),
          const SizedBox(width: 250),
          IconButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => const Settings()));
            },
            icon: const Icon(PhosphorIconsFill.gear),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Notifications()),
              );
            },
            icon: const Icon(PhosphorIconsFill.bell),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Column(
            children: [
              Row(
                children: [
                  //Rent collection
                  SmallCards(
                    cardTitle: "Rent Collected",
                    icon: PhosphorIconsFill.wallet,
                  ),
                  const SizedBox(width: 25),
                  //outstanding payments 
                  SmallCards(
                    cardTitle: "Outstanding",
                    icon: PhosphorIconsFill.clock,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  //total payments due
                  SmallCards(
                    cardTitle: "Total Rent Due",
                    icon: PhosphorIconsFill.calendarDots,
                  ),
                  const SizedBox(width: 25),
                  //Property number
                  SmallCards(
                    cardTitle: "Properties",
                    icon: PhosphorIconsFill.buildingApartment,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                "Payment status:",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 400,
                width: double.infinity,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "${DateFormat('MMMM yyyy').format(DateTime.now())} rent collection:",
                            style: TextStyle(
                              color: Color.fromARGB(223, 84, 84, 84),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 100),
                        Text.rich(
                          TextSpan(
                            recognizer: TapGestureRecognizer(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            text: "See all",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
