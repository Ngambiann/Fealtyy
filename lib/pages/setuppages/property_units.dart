import 'package:fealty_app/components/buttons/setupbuttons.dart';
import 'package:fealty_app/components/texts/setuptexts.dart';
import 'package:fealty_app/pages/setuppages/payment_tracking.dart';
import 'package:fealty_app/pages/setuppages/property_setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyUnits extends StatefulWidget {
  const PropertyUnits({super.key});

  @override
  State<PropertyUnits> createState() => _PropertyUnitsState();
}

class _PropertyUnitsState extends State<PropertyUnits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Header text
            SetupHeaders(textcontent: "Set property layout:"),
            SizedBox(height: 55.h),

            SizedBox(height: 75.h),
            Row(
              children: [
                Previousbutton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PropertySetup(),
                      ),
                    );
                  },
                  buttonname: "Back",
                ),

                ContinueButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PaymentTrackingOptions(),
                      ),
                    );
                  },
                  buttonname: "Next",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
