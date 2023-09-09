// ignore_for_file: sized_box_for_whitespace

import 'dart:math';
import '../../theme/text_styles.dart';
import '../../generated/l10n.dart';
import '../widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../constants/lists.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

      // keepPage: false,
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

  Widget _buildHeader() {
    return Transform.rotate(
      angle: 50,
      child: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width - 40,
        child: Lottie.asset('assets/images/planeLottieFile.json', repeat: true),
      ),
    );
  }

  Widget _buildDotScrollable() {
    return Positioned(
      top: 270,
      child: Row(
        children: [
          ...List.generate(
            ticketProvider.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: index == ticketProvider.length - 1
                  ? const EdgeInsets.only()
                  : const EdgeInsets.only(right: 15),
              height: currentTicketProvider == index ? 15 : 8,
              width: 8,
              decoration: BoxDecoration(
                color: currentTicketProvider == index
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _ticketsProviderViewer() {
    return PageView.builder(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          currentTicketProvider = value % ticketProvider.length;
        });
      },
      itemBuilder: (context, index) {
        double pageIndex = index.toDouble();
        double scale = max(
          viewPortFraction,
          (1 - (pageOffset! - pageIndex).abs() + viewPortFraction),
        );

        double angle = (pageIndex - pageOffset!) * 45;
        angle = angle.clamp(-45, 45);

        return Padding(
          padding: EdgeInsets.only(top: 100 - (scale / 1.6 * 100)),
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
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Image.asset(
                          ticketProvider[index % ticketProvider.length],
                          key: UniqueKey(),
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.error);
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: flightBookingAppBar(context),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 50),
                Container(
                  height: 350,
                  width: 350,
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      _ticketsProviderViewer(),
                      _buildDotScrollable(),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Card(
                    color: Colors.white.withOpacity(.1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        S.of(context).randomTxt,
                        style: mainTStyle(context: context, fSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
