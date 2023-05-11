import 'package:flutter/material.dart';
import 'package:flutter_assesment/utils/constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 58,
      decoration: BoxDecoration(
        color: AppColors.primaryYellow,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Center(
          child: Text(
        text,
        style: Theme.of(context).textTheme.bodySmall,
      )),
    );
  }
}
