// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace,

import 'package:flight_booking/constants/colors.dart';
import 'package:flight_booking/constants/text_styles.dart';
import 'package:flight_booking/presentation/screens/Login/widgets/build_btn.dart';
import 'package:flight_booking/presentation/screens/Login/widgets/build_header.dart';
import 'package:flight_booking/presentation/screens/Login/widgets/build_input_section.dart';
import 'package:flutter/material.dart';

import '../../widgets/flight_booking_nav_bar.dart';

class PhoneAuthScreen extends StatefulWidget {
  const PhoneAuthScreen({super.key});

  @override
  State<PhoneAuthScreen> createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<PhoneAuthScreen> {
  // TextEditingController? phoneController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildHeader('phoneNumber'),
                SizedBox(height: 100),
                buildInputSection(context, 'phoneNumber'),
                SizedBox(height: 100),
                buildBtn(context, 'phoneNumber')
              ],
            )),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return FlightBookingNavBar();
                    },
                  ));
                },
                child: Text(
                  "Skip this",
                  style: ordinaryTStyle(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
