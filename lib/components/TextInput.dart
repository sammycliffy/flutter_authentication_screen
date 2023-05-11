import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? textEditingController;
  final String? hintText;
  final Widget? prefixIcon;
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  const CustomTextFormField(
      {super.key,
      this.hintText,
      this.prefixIcon,
      this.keyboardType = TextInputType.text,
      this.textEditingController,
      this.isPassword = false,
      this.validator});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isPasswordShow = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      child: TextFormField(
        keyboardType: widget.keyboardType,
        controller: widget.textEditingController,
        obscureText: isPasswordShow ? false : widget.isPassword,
        validator: widget.validator,
        decoration: InputDecoration(
          hintStyle: Theme.of(context).textTheme.bodySmall,
          suffixIcon: showPasswordIcon(widget.isPassword),
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          fillColor: AppColors.textFieldGrey,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(9.0),
          ),
          // errorBorder: AppColors.errorBorder,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: const BorderSide(color: AppColors.textDark)),
          // focusedErrorBorder: AppColors.normalBorder
        ),
      ),
    );
  }

  showPasswordIcon(bool isPassword) {
    if (isPassword) {
      if (isPasswordShow) {
        return IconButton(
          icon: const Icon(
            Icons.visibility,
            color: AppColors.textDark,
          ),
          onPressed: () => setState(() {
            isPasswordShow = !isPasswordShow;
          }),
        );
      }
      return IconButton(
        icon: const Icon(
          Icons.visibility_off,
          color: AppColors.textDark,
        ),
        onPressed: () => setState(() {
          isPasswordShow = !isPasswordShow;
        }),
      );
    }
  }
}
