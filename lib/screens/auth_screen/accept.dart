import 'package:flutter/material.dart';
import 'package:flutter_assesment/utils/constants/images.dart';

import '../../components/custom_button.dart';
import '../../components/spacer_.dart';
import '../../utils/constants/colors.dart';

class Accept extends StatefulWidget {
  const Accept({super.key});

  @override
  State<Accept> createState() => _AcceptState();
}

class _AcceptState extends State<Accept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: 29,
              width: 29,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 25, right: 20),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Adproof Privacy policy",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    heightSpace(20),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur. \nNunc dolor elit.",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.textDark.withOpacity(.6),
                          ),
                    ),
                    heightSpace(20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 17),
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primaryYellow),
                          ),
                        ),
                        widthSpace(10),
                        Text(
                          "Lorem ipsum dolor sit amet conser. \nNunc dolor elit.",
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.textDark.withOpacity(.6),
                                  ),
                        ),
                      ],
                    ),
                    heightSpace(20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 17),
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primaryYellow),
                          ),
                        ),
                        widthSpace(10),
                        Text(
                          "Lorem ipsum dolor sit amet conser. \nNunc dolor elit.",
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.textDark.withOpacity(.6),
                                  ),
                        ),
                      ],
                    ),
                    heightSpace(20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 17),
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primaryYellow),
                          ),
                        ),
                        widthSpace(10),
                        Text(
                          "Lorem ipsum dolor sit amet conser. \nNunc dolor elit.",
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.textDark.withOpacity(.6),
                                  ),
                        ),
                      ],
                    ),
                    heightSpace(20),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 17),
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primaryYellow),
                          ),
                        ),
                        widthSpace(10),
                        Text(
                          "Lorem ipsum dolor sit amet conser. \nNunc dolor elit.",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: AppColors.textDark.withOpacity(.6),
                                  fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    heightSpace(30),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. \nTincidunt sagittis urna sit egestas",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.textDark.withOpacity(.6),
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Text(
                          "sollicitudin. Aliquam",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color: AppColors.textDark.withOpacity(.6),
                                  fontWeight: FontWeight.w400),
                        ),
                        widthSpace(5),
                        Text(
                          "Privacy Policy",
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: AppColors.textDark,
                                  ),
                        ),
                      ],
                    ),
                    heightSpace(40),
                    const CustomButton(text: "Accept and continue")
                  ])),
        ),
      ]),
    ));
  }
}
