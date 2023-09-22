import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isttest/app/controllers/login_controller.dart';
import 'package:isttest/app/ui/components/custom_back_button.dart';
import 'package:isttest/app/ui/components/custom_button.dart';
import 'package:isttest/app/ui/components/custom_positioned_ellipse.dart';
import 'package:isttest/app/ui/components/custom_text.dart';
import 'package:isttest/app/ui/components/custom_textfield.dart';
import 'package:isttest/core/utils/helpers/custom_helpers.dart';
import 'package:isttest/core/utils/theme/color_scheme.dart';
import 'package:isttest/routes/app_links.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = Get.find<LoginController>();

  @override
  void initState() {
    loginController.resetForm();
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
                    CustomPositionedEllipse(color: kSecondBgAccent, height: 480.h, width: 494.w, top: 230.h, left: -110.h),
                    CustomPositionedEllipse(color: kSecondBgAccent, height: 512.h, width: 494.w, bottom: -50.h, right: -100.h),
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
                      CustomText(text: 'Welcome Back!', fontSize: 32.sp, fontWeight: FontWeight.w700),
                      SizedBox(height: 10.h),
                      const CustomText(text: 'Enter Your Username & Password!'),
                      SizedBox(height: 167.h),
                      CustomTextFormField(hintText: 'Username', controller: loginController.usernameController),
                      SizedBox(height: 67.h),
                      CustomTextFormField(hintText: 'Password', controller: loginController.passwordController, isPassword: true),
                      SizedBox(height: 95.h),
                      Center(child: CustomButton(text: 'LOGIN', onPressed: loginController.onLogin)),
                      SizedBox(height: 18.h),
                      Center(
                        child: InkWell(
                          onTap: () => CustomHelpers.showToast('Forgot password tap!'),
                          child: const CustomText(text: 'Forgotten Password?', color: kBlackColor, fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Center(
                        child: InkWell(
                          onTap: () => Get.toNamed(AppLinks.SIGNUP),
                          child: const CustomText(text: 'Or Create a New Account?', color: kBlackColor, fontWeight: FontWeight.w400),
                        ),
                      ),
                      // Container(height: 300.h,color: Colors.red,),
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
