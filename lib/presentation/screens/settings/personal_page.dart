// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flight_booking/constants/colors.dart';
import 'package:flight_booking/presentation/screens/settings/widgets/personal_card.dart';
import 'package:flight_booking/presentation/screens/settings/widgets/settings_list.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../widgets/ordinary_appbar.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: backColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: ordinaryAppBar(S.of(context).settings)),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            personalCard(context),
            SizedBox(height: 20),
            Expanded(child: settingsList(context)),
          ],
        )),
      ),
    );
  }
}
