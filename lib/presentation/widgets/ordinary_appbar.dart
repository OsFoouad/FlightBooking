import 'package:flutter/material.dart';

import '../../theme/text_styles.dart';

Widget ordinaryAppBar(String screenTitle, BuildContext context) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    elevation: 0,
    title: Text(
      screenTitle,
      style: mainTStyle(context: context),
    ),
    backgroundColor: Colors.white.withOpacity(.1),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
  );
}
