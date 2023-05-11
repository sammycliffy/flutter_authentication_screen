import 'package:flutter/material.dart';
import 'package:flutter_assesment/components/TextInput.dart';
import 'package:flutter_assesment/components/spacer_.dart';
import 'package:flutter_assesment/screens/auth_screen/forgot_password.dart';
import 'package:flutter_assesment/screens/auth_screen/signup.dart';
import 'package:flutter_assesment/utils/constants/colors.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/custom_app_bar.dart';
import '../../components/custom_button.dart';
import '../../utils/constants/images.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                Center(child: SvgPicture.asset(AppImages.logo)),
                heightSpace(20),
                Center(
                  child: Text(
                    "Login now to access super fasting \n streaming",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.textDark.withOpacity(.6)),
                  ),
                ),
                heightSpace(50),
                Text("Email", style: Theme.of(context).textTheme.bodySmall),
                heightSpace(10),
                const CustomTextFormField(
                  hintText: "hi@joinpeddle.com",
                ),
                heightSpace(20),
                Text("Password", style: Theme.of(context).textTheme.bodySmall),
                heightSpace(10),
                const CustomTextFormField(
                  isPassword: true,
                  hintText: '*******************',
                ),
                heightSpace(10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword())),
                    child: Text(
                      "Forgot Password?",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                heightSpace(30),
                const CustomButton(text: "Login"),
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
                    widthSpace(10),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup())),
                      child: Text(
                        "Sign up",
                        style: Theme.of(context).textTheme.bodySmall,
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
