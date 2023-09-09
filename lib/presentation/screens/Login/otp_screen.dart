// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flight_booking/presentation/screens/Login/widgets/build_btn.dart';
import 'package:flight_booking/presentation/screens/Login/widgets/build_header.dart';
import 'package:flutter/material.dart';

import 'widgets/build_input_section.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildHeader('otpScreen', context),
                  SizedBox(height: 100),
                  buildInputSection(context, 'otpScreen'),
                  SizedBox(height: 100),
                  buildBtn(context, 'otpScreen')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
