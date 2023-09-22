import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isttest/app/ui/components/custom_button.dart';
import 'package:isttest/app/ui/components/custom_positioned_ellipse.dart';
import 'package:isttest/app/ui/components/custom_text.dart';
import 'package:isttest/core/assets/asset_file_path.dart';
import 'package:isttest/core/utils/theme/color_scheme.dart';
import 'package:isttest/routes/app_links.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Stack(
            children: [
              Stack(
                children: [
                  CustomPositionedEllipse(color: kFirstBgAccent, top: -40.h, left: -100.h),
                  CustomPositionedEllipse(color: kFirstBgAccent, top: 150.h, right: -115.h),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 33.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 164.h),
                    Row(
                      children: [
                        SizedBox(width: 220.w),
                        Image.asset(AssetFilePath.Dna, height: 103.h, width: 103.h),
                      ],
                    ),
                    SizedBox(height: 31.h),
                    Center(
                      child: ClipOval(child: Image.asset(AssetFilePath.Person, height: 165.h, width: 165.h)),
                    ),
                    SizedBox(height: 52.h),
                    CustomText(text: "Let’s Get\nStarted", fontSize: 75.sp, maxLine: 2, height: 1.1, fontWeight: FontWeight.w800),
                    SizedBox(height: 10.h),
                    CustomText(text: "Grow Togheter", fontSize: 20.sp),
                    SizedBox(height: 46.h),
                    Center(
                      child: CustomButton(
                        text: 'JOIN NOW',
                        onPressed: () {
                          Get.toNamed(AppLinks.LOGIN);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
