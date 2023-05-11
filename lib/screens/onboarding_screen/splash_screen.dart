import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_assesment/components/spacer_.dart';
import 'package:flutter_assesment/screens/onboarding_screen/onboarding.dart';
import 'package:flutter_assesment/utils/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/images.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Center(child: SvgPicture.asset(AppImages.logo))),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Designed by",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 12, color: AppColors.textDark.withOpacity(.6)),
                ),
                widthSpace(5),
                Text(
                  "Peddle Technologies",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 12, color: AppColors.textDark),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });
  }
}
