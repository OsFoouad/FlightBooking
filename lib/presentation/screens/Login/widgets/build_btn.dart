// ignore_for_file: prefer_const_constructors

import 'package:flight_booking/presentation/screens/Login/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../home_screen.dart';

Widget buildBtn(BuildContext context, String screenName) {
  late String btnTxt;
  if (screenName == 'phoneNumber') {
    btnTxt = 'Send Code';
  } else if (screenName == 'otpScreen') {
    btnTxt = 'verifiy';
  }
  return Align(
    alignment: Alignment.centerRight,
    child: ElevatedButton(
      onPressed: () {
        switch (screenName) {
          case 'phoneNumber':
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return OTPScreen();
              },
            ));
          case 'otpScreen':
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return HomeScreen();
              },
            ));
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
      child: Text(
        btnTxt,
        style: TextStyle(color: black),
      ),
    ),
  );
}
