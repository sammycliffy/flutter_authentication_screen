import 'package:flutter/material.dart';
import 'package:flutter_assesment/components/TextInput.dart';
import 'package:flutter_assesment/components/custom_app_bar.dart';
import 'package:flutter_assesment/components/spacer_.dart';
import 'package:flutter_assesment/screens/auth_screen/login.dart';
import 'package:flutter_assesment/screens/auth_screen/otp_verification.dart';
import 'package:flutter_assesment/utils/constants/colors.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/custom_button.dart';
import '../../utils/constants/images.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), child: CustomAppBar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: SvgPicture.asset(
                  AppImages.logo,
                  width: 145,
                  height: 37,
                )),
                heightSpace(20),
                Center(
                  child: Text(
                    "Register now to enjoy maximum security \n and advanced protection on the internet",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textDark.withOpacity(.6),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                heightSpace(30),
                Text("First name",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.textDark.withOpacity(.6))),
                heightSpace(10),
                const CustomTextFormField(
                  hintText: "Gladys",
                ),
                heightSpace(10),
                Text("Last name",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.textDark.withOpacity(.6))),
                heightSpace(10),
                const CustomTextFormField(
                  hintText: "Amidat",
                ),
                heightSpace(10),
                Text("Email",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.textDark.withOpacity(.6))),
                heightSpace(10),
                const CustomTextFormField(hintText: "hi@joinpeddle.com"),
                heightSpace(10),
                Text("Password",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.textDark.withOpacity(.6))),
                heightSpace(10),
                const CustomTextFormField(
                  hintText: "*****************",
                  isPassword: true,
                ),
                heightSpace(30),
                GestureDetector(
                  child: const CustomButton(text: "Sign up"),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OTPVerification())),
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
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login())),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login())),
                        child: Text(
                          "Sign in",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    )
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
