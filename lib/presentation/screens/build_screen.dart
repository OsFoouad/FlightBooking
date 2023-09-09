import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'next_flights.dart';
import 'reservation_screen.dart';
import 'settings/personal_page.dart';

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
