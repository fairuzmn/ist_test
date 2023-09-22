import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isttest/core/utils/theme/color_scheme.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key, required this.hintText, this.controller, this.isPassword = false});

  final String hintText;
  final TextEditingController? controller;
  final bool isPassword;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final TextStyle contentStyle = TextStyle(
    fontStyle: FontStyle.italic,
    color: kBlackColor,
    fontWeight: FontWeight.w500,
    fontSize: 23.sp,
    fontFamily: "Inter",
  );

  bool showPassword = false;

  void togglePassword() {
    setState(() => showPassword = !showPassword);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: contentStyle,
      obscureText: widget.isPassword ? !showPassword : false,
      decoration: InputDecoration(
        focusColor: kPrimaryColor,
        hintText: widget.hintText,
        hintStyle: contentStyle,
        contentPadding: EdgeInsets.only(bottom: 20.h, left: 12.w),
        fillColor: kBlackColor,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off, color: kBlackColor),
                onPressed: togglePassword,
              )
            : null,
        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: kBlackColor)),
      ),
    );
  }
}
