import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final Widget? suffixIcon;
  final String hintText;
  final bool? isObscureText;
  final Color? backgroundColor;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField({
    super.key,
    this.suffixIcon,
    required this.hintText,
    this.isObscureText,
    this.backgroundColor,
    this.focusedBorder,
    this.enabledBorder,
    this.contentPadding,
    this.inputTextStyle,
    this.hintStyle,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.lightergray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        filled: true,
        fillColor: backgroundColor ?? ColorsManager.morelightgray,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14LightgrayMedium,
        suffixIcon: suffixIcon,
      ),
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      obscureText: isObscureText ?? false,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
