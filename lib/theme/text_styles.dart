// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';

mainTStyle({
  required BuildContext context,
  double fSize = 24.0,
}) {
  return TextStyle(
    color: Theme.of(context).colorScheme.primary,
    fontSize: fSize,
    fontWeight: FontWeight.bold,
  );
}

ordinaryTStyle({
  required BuildContext context,
  double fSize = 18.0,
}) {
  return TextStyle(
    color: Theme.of(context).colorScheme.primary,
    fontSize: fSize,
    fontWeight: FontWeight.w600,
  );
}
