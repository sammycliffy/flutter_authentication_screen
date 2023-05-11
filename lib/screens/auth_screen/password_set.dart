import 'package:flutter/material.dart';
import 'package:flutter_assesment/components/TextInput.dart';
import 'package:flutter_assesment/components/custom_app_bar.dart';
import 'package:flutter_assesment/components/spacer_.dart';
import 'package:flutter_assesment/screens/auth_screen/success.dart';
import 'package:flutter_assesment/utils/constants/colors.dart';

import '../../components/custom_button.dart';

class PasswordSet extends StatelessWidget {
  const PasswordSet({super.key});

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
                Text(
                  "Set new password ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 30, fontWeight: FontWeight.w600),
                ),
                heightSpace(20),
                Text(
                  "Your new password must be different to previously used passwords.",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textDark.withOpacity(.6),
                      fontWeight: FontWeight.w400),
                ),
                heightSpace(50),
                Text("New password",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.textDark.withOpacity(.6))),
                heightSpace(10),
                const CustomTextFormField(
                  isPassword: true,
                  hintText: '****************',
                ),
                heightSpace(10),
                Text("Must be at least 8 characters",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.textDark.withOpacity(.6))),
                heightSpace(20),
                Text("Confirm new password",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.textDark.withOpacity(.6))),
                heightSpace(10),
                const CustomTextFormField(
                  isPassword: true,
                  hintText: '****************',
                ),
                heightSpace(30),
                GestureDetector(
                  child: const CustomButton(text: "Reset Password"),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SuccessAuth())),
                ),
                heightSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have a problem?",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.textDark.withOpacity(.6)),
                    ),
                    widthSpace(10),
                    Text(
                      "Contact us",
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
