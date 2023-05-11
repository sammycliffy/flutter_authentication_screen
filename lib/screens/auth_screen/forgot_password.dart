import 'package:flutter/material.dart';
import 'package:flutter_assesment/components/TextInput.dart';
import 'package:flutter_assesment/components/spacer_.dart';
import 'package:flutter_assesment/screens/auth_screen/password_set.dart';
import 'package:flutter_assesment/utils/constants/colors.dart';

import '../../components/custom_app_bar.dart';
import '../../components/custom_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                  "Seems you lost\nyour key 😭 ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                heightSpace(20),
                Text(
                  "Enter your email address to receive a \npassword reset link.",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textDark.withOpacity(.6),
                      fontWeight: FontWeight.w400),
                ),
                heightSpace(50),
                Text("Email", style: Theme.of(context).textTheme.bodySmall),
                heightSpace(10),
                const CustomTextFormField(
                  hintText: "hi@joinpeddle.com",
                ),
                heightSpace(30),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PasswordSet())),
                    child: const CustomButton(text: "Send code")),
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
