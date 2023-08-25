// ignore_for_file: prefer_const_constructors

import 'package:flight_booking/constants/colors.dart';
import 'package:flight_booking/constants/text_styles.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flutter/material.dart';

Widget settingsList(BuildContext context) {
  List<String> settingsOptions = [
    S.of(context).account,
    S.of(context).language,
    S.of(context).theme,
    S.of(context).help,
    S.of(context).shareApp,
    S.of(context).notification,
    S.of(context).logout,
  ];
  List<IconData> settingsIcons = [
    Icons.account_box,
    Icons.language_rounded,
    Icons.color_lens,
    Icons.help_center_rounded,
    Icons.share_rounded,
    Icons.notification_add_rounded,
    Icons.logout,
  ];

  return ListView.builder(
    itemCount: settingsOptions.length,
    itemBuilder: (context, index) {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.1),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: ListTile(
          title: Text(
            settingsOptions[index],
            style: ordinaryTStyle(
                fColor: settingsOptions[index] == S.of(context).logout
                    ? myRed
                    : babyBlue),
          ),
          leading: Icon(
            settingsIcons[index],
            color: settingsOptions[index] == S.of(context).logout
                ? myRed
                : myYellow,
          ),
        ),
      );
    },
  );
}
