import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isttest/app/controllers/signup_controller.dart';
import 'package:isttest/app/ui/components/custom_back_button.dart';
import 'package:isttest/app/ui/components/custom_button.dart';
import 'package:isttest/app/ui/components/custom_positioned_ellipse.dart';
import 'package:isttest/app/ui/components/custom_text.dart';
import 'package:isttest/app/ui/components/custom_textfield.dart';
import 'package:isttest/core/utils/theme/color_scheme.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupController signupController = Get.find<SignupController>();

  @override
  void initState() {
    signupController.resetForm();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: Stack(
              children: [
                Stack(
                  children: [
                    CustomPositionedEllipse(color: kThirdBgAccent, top: 90.h, left: -60.h),
                    CustomPositionedEllipse(color: kThirdBgAccent, top: 330.h, right: -118.h),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 33.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24.h),
                      const CustomBackButton(),
                      SizedBox(height: 54.h),
                      CustomText(text: 'Create\nAccount :)', fontSize: 32.sp, fontWeight: FontWeight.w700, maxLine: 2),
                      SizedBox(height: 79.h),
                      CustomTextFormField(hintText: 'Enter Email Id', controller: signupController.emailController),
                      SizedBox(height: 67.h),
                      CustomTextFormField(hintText: 'Create Username', controller: signupController.usernameController),
                      SizedBox(height: 67.h),
                      CustomTextFormField(hintText: 'Create Password', controller: signupController.passwordController, isPassword: true),
                      SizedBox(height: 121.h),
                      Center(child: CustomButton(text: 'Sign Up', onPressed: signupController.onSignup)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
