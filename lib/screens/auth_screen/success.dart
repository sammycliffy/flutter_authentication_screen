import 'package:flutter/material.dart';
import 'package:flutter_assesment/components/spacer_.dart';
import 'package:flutter_assesment/utils/constants/colors.dart';
import 'package:flutter_assesment/utils/constants/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/custom_button.dart';

class SuccessAuth extends StatelessWidget {
  const SuccessAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(children: [
          heightSpace(120.h),
          Text("Password Reset \nSuccessful",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontSize: 30)),
          heightSpace(50.h),
          SvgPicture.asset(AppImages.imageIcon),
          heightSpace(50.h),
          Center(
            child: Text("Welcome back to an Ad-Free Experience\n with Adproof",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textDark.withOpacity(.6),
                    )),
          ),
          heightSpace(50),
          const CustomButton(text: "Continue"),
        ]),
      ),
    );
  }
}
