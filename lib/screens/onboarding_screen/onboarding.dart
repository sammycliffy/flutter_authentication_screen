import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assesment/components/spacer_.dart';
import 'package:flutter_assesment/screens/auth_screen/account_selection.dart';
import 'package:flutter_assesment/screens/auth_screen/login.dart';
import 'package:flutter_assesment/utils/constants/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/custom_button.dart';
import '../../models/onboading_model.dart';
import '../../utils/constants/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          heightSpace(90),
          Expanded(
              child: PageView.builder(
                  itemCount: onBoardingModelList.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(children: [
                      Text(onBoardingModelList[index].title,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontSize: 30)),
                      heightSpace(50.h),
                      SvgPicture.asset(AppImages.imageIcon),
                      heightSpace(55.h),
                      Text(
                        onBoardingModelList[index].description,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.textDark.withOpacity(.6)),
                      )
                    ]);
                  })),
          currentIndex != 3
              ? DotsIndicator(
                  dotsCount: (onBoardingModelList.length - 1),
                  position: currentIndex.toDouble(),
                  decorator: DotsDecorator(
                    activeColor: AppColors.primary,
                    spacing: const EdgeInsets.all(2),
                    color: AppColors.primary.withOpacity(.44),
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                )
              : Text(
                  "Continue",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.primary, fontWeight: FontWeight.w700),
                ),
          heightSpace(30.h),
          Text(
            "The best adblocker app for a faster,\n safer browsing experience",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColors.textDark.withOpacity(.6)),
          ),
          heightSpace(20),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AccounSelection())),
            child: const CustomButton(
              text: "Register for free",
            ),
          ),
          heightSpace(20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login())),
                child: Text(
                  "Sign in",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              widthSpace(12),
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                    color: AppColors.grey, shape: BoxShape.circle),
              ),
              widthSpace(12),
              Text(
                "Skip",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          heightSpace(20),
          RichText(
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
              text: TextSpan(children: [
                TextSpan(
                    text: "By starting a 7 day free trial. You accept the",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textDark.withOpacity(.6),
                        fontSize: 10)),
                TextSpan(
                    text: " Terms of Services",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 10)),
                TextSpan(
                    text: "\nand the ",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textDark.withOpacity(.6),
                        fontSize: 10)),
                TextSpan(
                    text: "Privacy Policy.",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 10)),
                TextSpan(
                    text:
                        " A monthly paid subscription will\n activate and you will be charged \$12.99 if you do not cancel \n your subscription at least 24 hours before the free trial \n period of 7 days comes to an end.",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textDark.withOpacity(.6),
                        fontSize: 10)),
              ])),
          heightSpace(20),
        ]),
      ),
    );
  }
}
