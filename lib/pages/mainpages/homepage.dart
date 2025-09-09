
import 'package:fealty_app/pages/secpages/notifications.dart';
import 'package:fealty_app/pages/secpages/profileview.dart';
import 'package:fealty_app/pages/secpages/settings.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Profileview()));
              },
              icon: const Icon(PhosphorIconsFill.userCircle)),
          const SizedBox(
            width: 250,
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
              icon: const Icon(PhosphorIconsFill.gear)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Notifications()));
              },
              icon: const Icon(PhosphorIconsFill.bell)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Column(
            children: [
              Row(
                children: [
//Rent collection card
                  Container(
                    width: 175,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(height:5),
                        Row(
                          children: [
                             SizedBox(width:10),
                            Text("Rent Collected",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                )),
                            SizedBox(width: 20),
                            Icon(
                              PhosphorIconsFill.wallet,
                              color: Colors.black,
                              size: 25,
                            ),
                          ],
                        )
                       
                      ],
                    ),
                  ),
                  const SizedBox(width: 25),
//outstanding payments card
                  Container(
                    width: 175,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:const Column(
                      children: [
                        SizedBox(height:5),
                        Row(
                          children: [
                             SizedBox(width:10),
                            Text("Outstanding",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                )),
                            SizedBox(width: 30),
                            Icon(
                              PhosphorIconsFill.clock,
                              color: Colors.black,
                              size: 25,
                            ),
                          ],
                        )
                       
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
//total payments due card
                 Container(
                    width: 175,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(height:5),
                        Row(
                          children: [
                             SizedBox(width:10),
                            Text("Total Rent Due",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                )),
                            SizedBox(width: 20),
                            Icon(
                              PhosphorIconsFill.calendarDots,
                              color: Colors.black,
                              size: 25,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                   const SizedBox(width: 25),
                  
//Property number card
                  Container(
                    width: 175,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      children: [
                        SizedBox(height:5),
                        Row(
                          children: [
                             SizedBox(width:10),
                            Text("Properties",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                )),
                            SizedBox(width: 40),
                            Icon(
                              PhosphorIconsFill.buildingApartment,
                              color: Colors.black,
                              size: 25,
                            ),
                          ],
                        )
                       
                      ],
                    ),
                  ),
            ],
          ),
          const SizedBox(height: 30),
          const Text("Payment status:",
          textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
//Payment status card
          Container(
            height:400,
            width: 381,
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
              child:  Column(
                children: [
                  Row(
                    children: [
                      const Text("June 2025 rent collection status:",
                          style: TextStyle(
                            color: Color.fromARGB(224, 157, 157, 157),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )),
                       const SizedBox(width: 100),
                       Text.rich(TextSpan(
                        recognizer: TapGestureRecognizer(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        text: "See all"
                       ))
                    ],
                  )
                ],
              ),
          
          )
            ]) 
           
        ],
      ),
    );
  }
}
