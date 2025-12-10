import 'package:fealty_app/components/buttons/setupbuttons.dart';
import 'package:fealty_app/components/dropdown/setup_dropdown.dart';
import 'package:fealty_app/components/textfields/setuptextfields.dart';
import 'package:fealty_app/components/texts/setuptexts.dart';
import 'package:fealty_app/pages/setuppages/property_units.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertySetup extends StatefulWidget {
  const PropertySetup({super.key});

  @override
  State<PropertySetup> createState() => _AccountsetupState();
}

class _AccountsetupState extends State<PropertySetup> {
  final List<Map<String, dynamic>> propertyTypes = [
    {"label": "Apartment", "icon": Icons.apartment_rounded},
    {"label": "Bungalow", "icon": Icons.house_rounded},
    {"label": "Maisonette", "icon": Icons.home_work_rounded},
    {"label": "Villa", "icon": Icons.villa_rounded},
  ];
  final TextEditingController propertyNameController = TextEditingController();
  final TextEditingController propertyLocationController =
      TextEditingController();
  final TextEditingController propertyTypeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Header text
                SetupHeaders(
                  textcontent: "Add your first property to get started:",
                ),
            SizedBox(height: 55.h),
                //Property name field
                SetupFieldname(textcontent: "Property Name/Nickname"),
                Setuptextfields(
                  controller: propertyNameController,
                  hintText: "eg.Taylor Apartments",
                ),
                SizedBox(height: 55.h),
                //location
                SetupFieldname(textcontent: "Property Location"),
                Setuptextfields(
                  controller: propertyLocationController,
                  hintText: "eg.Westlands,Nairobi",
                ),
               SizedBox(height: 55.h),
                //Property type
                SetupFieldname(textcontent: "Property Type"),
                DropdownTextField(
                  controller: propertyTypeController,
                  hintText: "Select property type",
                  items: propertyTypes,
                ),
                SizedBox(height: 75.h),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ContinueButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PropertyUnits(),
                        ),
                      );
                    },
                    buttonname: "Next",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
