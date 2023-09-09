// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flight_booking/theme/theme_mode_provider.dart';
import 'package:flight_booking/presentation/screens/settings/widgets/personal_card.dart';
import 'package:flight_booking/presentation/screens/settings/widgets/settings_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../generated/l10n.dart';
import '../../widgets/ordinary_appbar.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeModeProvider = Provider.of<ThemeModeProvider>(context);
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: ordinaryAppBar(S.of(context).settings, context)),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            personalCard(context),
            SizedBox(height: 40),
            Expanded(
              child: settingsList(context, themeModeProvider),
            ),
          ],
        )),
      ),
    );
  }
}
