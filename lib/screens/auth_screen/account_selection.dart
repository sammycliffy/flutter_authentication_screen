import 'package:flutter/material.dart';
import 'package:flutter_assesment/components/spacer_.dart';
import 'package:flutter_assesment/screens/auth_screen/login.dart';
import 'package:flutter_assesment/screens/auth_screen/signup.dart';
import 'package:flutter_assesment/utils/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/images.dart';

class AccounSelection extends StatelessWidget {
  const AccounSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          heightSpace(120.h),
          Expanded(
              child: Column(
            children: [
              Center(
                  child: SvgPicture.asset(
                AppImages.logo,
                width: 145,
                height: 37,
              )),
              heightSpace(20),
              Text(
                "Sign up now to regain control of the \n internet. from clutter and annoyances ads.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.textDark.withOpacity(.6),
                    fontWeight: FontWeight.w400),
              ),
              heightSpace(30)
            ],
          )),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: ((context) => const Signup()))),
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              height: 58.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.textDark,
                  ),
                  borderRadius: BorderRadius.circular(28)),
              child: Row(children: [
                Container(
                  width: 28.w,
                  height: 28.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.textDark),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      AppImages.message,
                      height: 10,
                      width: 10,
                    ),
                  ),
                ),
                widthSpace(50.h),
                Text(
                  "Sign up with Email",
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ]),
            ),
          ),
          heightSpace(20),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 58.h,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.textDark.withOpacity(.2),
                ),
                borderRadius: BorderRadius.circular(28)),
            child: Row(children: [
              SvgPicture.asset(AppImages.apple),
              widthSpace(50.h),
              Text(
                "Sign up with Apple",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ]),
          ),
          heightSpace(20),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 58.h,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.textDark.withOpacity(.2),
                ),
                borderRadius: BorderRadius.circular(28)),
            child: Row(children: [
              SvgPicture.asset(AppImages.google),
              widthSpace(50.h),
              Text(
                "Sign up with Google",
                style: Theme.of(context).textTheme.bodySmall,
              )
            ]),
          ),
          heightSpace(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Have an account?",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: AppColors.textDark.withOpacity(.6)),
              ),
              widthSpace(15),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login())),
                child: Text(
                  "Sign in",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              )
            ],
          ),
          heightSpace(50)
        ]),
      ),
    );
  }
}
