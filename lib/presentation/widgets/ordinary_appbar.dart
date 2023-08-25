import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

Widget ordinaryAppBar(String screenTitle) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: false,
    elevation: 0,
    title: Text(
      screenTitle,
      style: mainTStyle(fColor: myYellow),
    ),
    backgroundColor: Colors.white.withOpacity(.1),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))),
  );
}
