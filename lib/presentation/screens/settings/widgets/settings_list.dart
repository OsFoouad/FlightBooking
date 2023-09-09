// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flight_booking/theme/text_styles.dart';
import 'package:flight_booking/generated/l10n.dart';
import 'package:flight_booking/theme/theme_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

import '../../../../main.dart';

Widget settingsList(BuildContext context, ThemeModeProvider themeModeProvider) {
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
              color: Colors.white.withOpacity(.3),
              borderRadius: BorderRadius.all(Radius.circular(14))),
          width: MediaQuery.of(context).size.width,
          height: 75,
          child: Row(
            children: [
              Icon(
                settingsIcons[0],
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                settingsOptions[0],
                style: ordinaryTStyle(context: context),
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
              backgroundColor: Theme.of(context).colorScheme.background,
              onPressed: (context) {
                MyApp.setLocale(context, Locale('ar'));
              },
              icon: Icons.language_rounded,
            ),
            // second action for En lang switch
            SlidableAction(
              backgroundColor: Theme.of(context).colorScheme.background,
              onPressed: (context) {
                MyApp.setLocale(context, Locale('en'));
              },
              icon: Icons.abc,
            ),
          ]),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.3),
                borderRadius: BorderRadius.all(Radius.circular(14))),
            width: MediaQuery.of(context).size.width,
            height: 75,
            child: Row(
              children: [
                Icon(
                  // ToDo : ss
                  settingsIcons[1],
                  color: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(width: 50),
                Text(
                  settingsOptions[1],
                  style: ordinaryTStyle(context: context),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        // theme item
        // * start of theme actions * //
        Consumer<ThemeModeProvider>(
          builder: (context, darkModeProvider, child) {
            return Slidable(
              startActionPane: ActionPane(
                motion: StretchMotion(),
                children: [
                  SlidableAction(
                    backgroundColor: Theme.of(context).colorScheme.background,
                    onPressed: (context) {
                      themeModeProvider.themeMode = ThemeMode.light;
                    },
                    icon: Icons.light_mode,
                  ),
                  SlidableAction(
                    backgroundColor: Theme.of(context).colorScheme.background,
                    onPressed: (context) {
                      themeModeProvider.themeMode = ThemeMode.dark;
                    },
                    icon: Icons.dark_mode,
                  ),
                ],
              ),
              endActionPane: ActionPane(motion: StretchMotion(), children: [
                SlidableAction(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  onPressed: (context) {
                    themeModeProvider.themeMode = ThemeMode.system;
                  },
                  icon: Icons.settings_applications_rounded,
                ),
              ]),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.3),
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                width: MediaQuery.of(context).size.width,
                height: 75,
                child: Row(
                  children: [
                    Icon(
                      settingsIcons[2],
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(width: 50),
                    Text(
                      settingsOptions[2],
                      style: ordinaryTStyle(context: context),
                    )
                  ],
                ),
              ),
            );
          },
        )
        // * end of theme actions * //
      ],
    ),
  );
}
