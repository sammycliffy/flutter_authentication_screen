import 'package:flutter/material.dart';
import 'package:flutter_assesment/components/custom_button.dart';
import 'package:flutter_assesment/components/spacer_.dart';
import 'package:flutter_assesment/screens/auth_screen/accept.dart';
import 'package:flutter_assesment/utils/constants/colors.dart';
import 'package:pinput/pinput.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Row(
            children: [
              widthSpace(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 29,
                    width: 29,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 12,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "OTP Verification",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 30),
                ),
                heightSpace(20),
                Text(
                  "We sent a verification code to your email",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.textDark.withOpacity(.6)),
                ),
                Row(
                  children: [
                    Text(
                      "address",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.textDark.withOpacity(.6)),
                    ),
                    Text(
                      " hi@joinpeddle.com",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.textDark),
                    ),
                  ],
                ),
                heightSpace(20),
                Row(
                  children: [
                    Text(
                      "Expires in 30 seconds:",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.textDark.withOpacity(.6)),
                    ),
                    Text(
                      " 01:16",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.primary),
                    )
                  ],
                ),
                heightSpace(20),
                Center(
                  child: Pinput(
                    defaultPinTheme: PinTheme(
                        textStyle: const TextStyle(fontSize: 40),
                        height: 57,
                        width: 71,
                        decoration: BoxDecoration(
                            color: AppColors.textFieldGrey,
                            borderRadius: BorderRadius.circular(9))),
                    focusedPinTheme: PinTheme(
                        height: 57,
                        width: 71,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(9))),
                    length: 4,
                  ),
                ),
                heightSpace(30),
                GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Accept())),
                    child: const CustomButton(text: "Proceed")),
                heightSpace(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn't receive OTP?",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.textDark.withOpacity(.6)),
                    ),
                    widthSpace(10),
                    Text(
                      "Resend code",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.primary,
                            decoration: TextDecoration.underline,
                          ),
                    )
                  ],
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
                    Text("Contact us",
                        style: Theme.of(context).textTheme.bodySmall)
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
