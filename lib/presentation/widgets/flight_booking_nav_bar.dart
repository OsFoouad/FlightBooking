// ignore_for_file: sized_box_for_whitespace

import 'package:flight_booking/constants/colors.dart';
import 'package:flight_booking/presentation/widgets/build_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightBookingNavBar extends StatefulWidget {
  const FlightBookingNavBar({super.key});

  @override
  State<FlightBookingNavBar> createState() => _FlightBookingNavBarState();
}

class _FlightBookingNavBarState extends State<FlightBookingNavBar> {
  List<IconData> bottomIcons = [
    Icons.home_filled,
    CupertinoIcons.compass_fill,
    CupertinoIcons.ticket_fill,
    Icons.person_rounded
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: buildScreen(currentPage),
      bottomNavigationBar: Container(
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              bottomIcons.length,
              (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentPage = index;
                        // print(currentPage);
                      });
                    },
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 100),
                          height: currentPage == index ? 24 : 0,
                          width: currentPage == index ? 24 : 0,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(.2),
                              spreadRadius: currentPage == index ? 5 : 0,
                              blurRadius: currentPage == index ? 5 : 0,
                            )
                          ]),
                        ),
                        Icon(
                          bottomIcons[index],
                          color: currentPage == index
                              ? Colors.white
                              : Colors.white.withOpacity(.3),
                        ),
                      ],
                    ),
                  )),
        ),
      ),
    );
  }
}
