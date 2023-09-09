// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flight_booking/theme/text_styles.dart';
import 'package:flutter/material.dart';

Widget personalCard(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 200,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.primary.withOpacity(.2),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(
        Radius.circular(16),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              height: 110,
              width: 110,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/Osama.jpg"),
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Osama Fouad",
                style: mainTStyle(context: context),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "01019541662",
                style: ordinaryTStyle(context: context),
              )
            ],
          )
        ],
      ),
    ),
  );
}
