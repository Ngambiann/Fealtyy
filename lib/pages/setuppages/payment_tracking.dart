import 'package:fealty_app/components/buttons/setupbuttons.dart';
import 'package:fealty_app/components/texts/setuptexts.dart';
import 'package:fealty_app/pages/mainpages/homepage.dart';
import 'package:fealty_app/pages/setuppages/property_units.dart';
import 'package:flutter/material.dart';

class PaymentTrackingOptions extends StatefulWidget {
  const PaymentTrackingOptions({super.key});

  @override
  State<PaymentTrackingOptions> createState() => _PaymentTrackingOptionsState();
}

class _PaymentTrackingOptionsState extends State<PaymentTrackingOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Column(
              children: [
                SetupHeaders(
                  textcontent:
                      "How would you like to track your rent payments?",
                ),
                SizedBox(height: 24),
                Paymentoptions(
                  onPressed: () {},
                  buttonname: "Manually record payments",
                ),
                SizedBox(height: 24),
                Paymentoptions(
                  onPressed: () {},
                  buttonname: "Link Mpesa paybill/Till",
                ),
                SizedBox(height: 24),
                Paymentoptions(
                  onPressed: () {},
                  buttonname: "Upload Mpesa/bank statement",
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                     Previousbutton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PropertyUnits(),
                          ),
                        );
                      },
                      buttonname: "Previous",
                    ),
                    SizedBox(width: 21),
                    ContinueButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Homepage(),
                          ),
                        );
                      },
                      buttonname: "Done",
                    ), 
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
