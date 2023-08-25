// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flight_booking/constants/text_styles.dart';
import 'package:flutter/material.dart';

Widget personalCard(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 150,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(.1),
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
                style: mainTStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "01019541662",
                style: ordinaryTStyle(),
              )
            ],
          )
        ],
      ),
    ),
  );
}
