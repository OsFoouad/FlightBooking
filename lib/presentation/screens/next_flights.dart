// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NextFlightScreen extends StatefulWidget {
  const NextFlightScreen({super.key});

  @override
  State<NextFlightScreen> createState() => _NextFlightScreenState();
}

class _NextFlightScreenState extends State<NextFlightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (Text("Next Flights")),
      ),
    );
  }
}
