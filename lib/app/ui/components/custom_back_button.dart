import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isttest/core/utils/theme/color_scheme.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-15.w, 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(48.h, 48.h),
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
          backgroundColor: kPrimaryColor,
          foregroundColor: kSecondaryColor,
        ),
        onPressed: () {
          Get.back();
        },
        child: Icon(
          Icons.keyboard_arrow_left,
          color: kSecondaryColor,
          size: 30.sp,
        ),
      ),
    );
  }
}
