// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flight_booking/constants/colors.dart';
import 'package:flight_booking/constants/text_styles.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../main.dart';

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

  return Center(
    child: Column(
      children: [
        // account item
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.1),
              borderRadius: BorderRadius.all(Radius.circular(14))),
          width: MediaQuery.of(context).size.width,
          height: 75,
          child: Row(
            children: [
              Icon(
                settingsIcons[0],
                color: myYellow,
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                settingsOptions[0],
                style: ordinaryTStyle(fColor: myYellow),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // Language item
        Slidable(
          startActionPane: ActionPane(motion: StretchMotion(), children: [
            // first action for Ar lang switch
            SlidableAction(
                backgroundColor: babyBlue,
                onPressed: (context) {
                  MyApp.setLocale(context, Locale('ar'));
                },
                icon: Icons.language),
            // second action for En lang switch
            SlidableAction(
              backgroundColor: Colors.deepPurple,
              onPressed: (context) {
                MyApp.setLocale(context, Locale('en'));
              },
              icon: Icons.language,
            ),
          ]),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.1),
                borderRadius: BorderRadius.all(Radius.circular(14))),
            width: MediaQuery.of(context).size.width,
            height: 75,
            child: Row(
              children: [
                Icon(
                  settingsIcons[1],
                  color: myYellow,
                ),
                SizedBox(width: 50),
                Text(
                  settingsOptions[1],
                  style: ordinaryTStyle(fColor: myYellow),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        // theme item
        Slidable(
          endActionPane: ActionPane(motion: StretchMotion(), children: [
            SlidableAction(
                backgroundColor: babyBlue,
                onPressed: (context) {},
                icon: Icons.light_mode),
            SlidableAction(
              backgroundColor: Colors.deepPurple,
              onPressed: (context) {},
              icon: Icons.dark_mode,
            ),
          ]),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.1),
                borderRadius: BorderRadius.all(Radius.circular(14))),
            width: MediaQuery.of(context).size.width,
            height: 75,
            child: Row(
              children: [
                Icon(
                  settingsIcons[2],
                  color: myYellow,
                ),
                SizedBox(width: 50),
                Text(
                  settingsOptions[2],
                  style: ordinaryTStyle(fColor: myYellow),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
