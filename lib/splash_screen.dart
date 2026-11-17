import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: SvgPicture.asset("assets/icons/Ellipse 1005.svg"),
          ),
          Center(
            child: SvgPicture.asset(
              "assets/icons/Logo.svg",
              height: 80,
              width: 80,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SvgPicture.asset("assets/icons/Ellipse 1006.svg"),
          ),
          // SvgPicture.asset("assets/icons/Ellipse 1006.svg"),
        ],
      ),
    );
  }
}
