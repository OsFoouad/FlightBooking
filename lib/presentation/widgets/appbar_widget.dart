// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'dart:ui';
import 'package:flight_booking/theme/text_styles.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/presentation/widgets/personal_avatar.dart';
import 'package:flight_booking/theme/theme_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget flightBookingAppBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: S.of(context).title,
                    style: mainTStyle(context: context),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Osama',
                        style: mainTStyle(context: context),
                      ),
                    ]),
              ),
              Text(
                S.of(context).appBarWelcomeMsg,
                style: ordinaryTStyle(context: context),
              ),
            ],
          ),
          personalAvatar(context)
        ],
      ),
    ),
  );
}
