// ignore_for_file: prefer_const_constructors

import 'package:flight_booking/theme/text_styles.dart';
import 'package:flutter/material.dart';

Widget buildHeader(String screenName, BuildContext context) {
  switch (screenName) {
    // for phone screen

    case 'phoneNumber':
      return Center(
        child: Column(
          children: [
            Text(
              "How Are you ?",
              textAlign: TextAlign.center,
              style: mainTStyle(context: context, fSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Please enter your phone number to start our Journey into flight booking app or you can skip this step ,"
              " but without the verification no reservation process will be done. ",
              textAlign: TextAlign.center,
              style: ordinaryTStyle(context: context, fSize: 18),
            ),
          ],
        ),
      );

    // for otp screen

    case 'otpScreen':
      return Center(
        child: Column(
          children: [
            Text(
              "Check your SMS",
              textAlign: TextAlign.center,
              style: mainTStyle(context: context, fSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "a code with six digits has been sent to you at phone number +201019541662",
              textAlign: TextAlign.center,
              style: ordinaryTStyle(context: context, fSize: 18),
            ),
          ],
        ),
      );

    default:
      return Container();
  }
}
