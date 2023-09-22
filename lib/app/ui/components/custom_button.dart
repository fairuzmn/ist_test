import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isttest/app/ui/components/custom_text.dart';
import 'package:isttest/core/utils/theme/color_scheme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onPressed, this.width, this.height, this.fontSize});

  final String text;
  final double? width, height;
  final double? fontSize;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? 281.w, height ?? 62.h),
        foregroundColor: kSecondaryColor,
        backgroundColor: kPrimaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
      ),
      onPressed: onPressed,
      child: CustomText(
        text: text,
        fontSize: fontSize ?? 30.sp,
        color: kSecondaryColor,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
