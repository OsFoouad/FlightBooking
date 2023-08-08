// ignore_for_file: prefer_const_constructors

import 'package:flight_booking/constants/colors.dart';
import 'package:flight_booking/presentation/screens/personal_page.dart';
import 'package:flutter/material.dart';

Widget personalAvatar(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => PersonalPage())),
    child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: white,
          shape: BoxShape.circle,
          border: Border.all(width: 1.0, color: myYellow),
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/Osama.jpg'),
        )),
  );
}
