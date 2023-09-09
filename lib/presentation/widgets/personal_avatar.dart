// ignore_for_file: prefer_const_constructors

import 'package:flight_booking/presentation/screens/settings/personal_page.dart';
import 'package:flutter/material.dart';

Widget personalAvatar(BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => PersonalPage())),
    child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
              width: 1.0, color: Theme.of(context).colorScheme.secondary),
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/Osama.jpg'),
        )),
  );
}
