// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MyColorScheme extends ColorScheme {
  final Color boxShadowColor;
  final Color namesColor;
  final Color priceColor;

  MyColorScheme({
    required this.boxShadowColor,
    required this.namesColor,
    required this.priceColor,
    required Color background,
    required Color primary,
    required Color secondary,
    required Color onBackground,
    required Color surface,
    required Color onSurface,
    required Brightness brightness,
    required Color onPrimary,
    required Color onSecondary,
    required Color error,
    required Color onError,
  }) : super(
          background: background,
          primary: primary,
          secondary: secondary,
          onBackground: onBackground,
          surface: surface,
          onSurface: onSurface,
          brightness: brightness,
          onPrimary: onPrimary,
          onSecondary: onSecondary,
          error: error,
          onError: onError,
        );
}
