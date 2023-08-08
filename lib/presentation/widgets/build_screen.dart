import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/next_flights.dart';
import '../screens/personal_page.dart';
import '../screens/reservation_screen.dart';

Widget buildScreen(int index) {
  switch (index) {
    case 0:
      return const HomeScreen();
    case 1:
      return const NextFlightScreen();
    case 2:
      return const ReservationScreen();
    case 3:
      return const PersonalPage();
    default:
      return const HomeScreen();
  }
}
