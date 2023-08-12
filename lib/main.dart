// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flight_booking/presentation/screens/Login/phone_auth_screen.dart';
import 'package:flight_booking/presentation/widgets/flight_booking_nav_bar.dart';
import 'package:flutter/material.dart';

import 'presentation/screens/Login/otp_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhoneAuthScreen(),
    );
  }
}
