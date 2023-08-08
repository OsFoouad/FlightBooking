// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flight_booking/constants/text_styles.dart';
import 'package:flight_booking/presentation/widgets/personal_avatar.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

Widget flightBookingAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    // centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: "Hi ",
                  style: mainTStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Osama',
                      style: mainTStyle(fColor: myYellow),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "hope you a good day",
              style: ordinartTStyle(),
            ),
          ],
        ),
        personalAvatar(context)
      ],
    ),
  );
}
