// ignore_for_file: prefer_const_constructors

import 'package:flight_booking/constants/colors.dart';
import 'package:flutter/material.dart';

mainTStyle({
  Color fColor = white,
  double fSize = 24.0,
}) {
  return TextStyle(
    color: fColor,
    fontSize: fSize,
    fontWeight: FontWeight.bold,
  );
}

ordinaryTStyle({
  Color fColor = white,
  double fSize = 18.0,
}) {
  return TextStyle(
    color: fColor,
    fontSize: fSize,
    fontWeight: FontWeight.w600,
  );
}
