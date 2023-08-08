// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:math';

import 'package:flight_booking/constants/colors.dart';
import 'package:flight_booking/presentation/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> ticketProvider = [
    'assets/images/ticketProvider/egyptAir.jpg',
    'assets/images/ticketProvider/flyEgypt.png',
    'assets/images/ticketProvider/getAirways.jpg',
    'assets/images/ticketProvider/skyScanner.jpeg',
    'assets/images/ticketProvider/travelWizard.jpg',
    'assets/images/ticketProvider/egyptAir.jpg',
    'assets/images/ticketProvider/flyEgypt.png',
    'assets/images/ticketProvider/getAirways.jpg',
    'assets/images/ticketProvider/skyScanner.jpeg',
    'assets/images/ticketProvider/travelWizard.jpg',
  ];

  PageController? pageController;
  double viewPortFraction = 0.6;
  double? pageOffset = 1;
  int currentTicketProvider = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 1,
      viewportFraction: viewPortFraction,
    )..addListener(() {
        setState(() {
          pageOffset = pageController!.page;
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    pageController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: flightBookingAppBar(context),
        ),
        backgroundColor: backColor,
        // body of screen
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/plane.gif"),
                  ),
                ),
              ),
              SizedBox(height: 50),
              // footer of screen
              Expanded(
                child: Container(
                  height: 400,
                  width: 400,
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      PageView.builder(
                        controller: pageController,
                        onPageChanged: (value) {
                          setState(() {
                            currentTicketProvider =
                                value % ticketProvider.length;
                          });
                        },
                        itemBuilder: (context, index) {
                          double pageIndex = index.toDouble();
                          double scale = max(
                            viewPortFraction,
                            (1 -
                                (pageOffset! - pageIndex).abs() +
                                viewPortFraction),
                          );

                          double angle = (pageIndex - pageOffset!) * 45;
                          angle = angle.clamp(-45, 45);

                          return Padding(
                            padding:
                                EdgeInsets.only(top: 100 - (scale / 1.6 * 100)),
                            child: Stack(
                              alignment: AlignmentDirectional.topCenter,
                              children: [
                                Transform.translate(
                                  offset: Offset(0, scale * 40),
                                  child: Transform.scale(
                                    scale: scale,
                                    child: Transform.rotate(
                                      angle: angle * pi / 180,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(24),
                                        child: Container(
                                          width: 150,
                                          height: 150,
                                          child: Image.asset(
                                            ticketProvider[
                                                index % ticketProvider.length],
                                            key: UniqueKey(),
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) {
                                              return Icon(Icons.error);
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Positioned(
                        top: 300,
                        child: Row(
                          children: [
                            ...List.generate(
                              ticketProvider.length,
                              (index) => AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                margin: index == ticketProvider.length - 1
                                    ? EdgeInsets.only()
                                    : EdgeInsets.only(right: 15),
                                height: currentTicketProvider == index ? 15 : 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  color: currentTicketProvider == index
                                      ? Colors.orange
                                      : white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
