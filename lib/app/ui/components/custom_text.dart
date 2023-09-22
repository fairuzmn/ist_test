import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isttest/core/utils/theme/color_scheme.dart';

class CustomText extends StatefulWidget {
  const CustomText({Key? key, this.fontSize, required this.text, this.maxLine = 1, this.color = kPrimaryColor, this.textAlign = TextAlign.left, this.fontWeight = FontWeight.w600, this.height})
      : super(key: key);
  final double? fontSize, height;
  final String text;
  final int maxLine;
  final Color color;
  final TextAlign textAlign;
  final FontWeight fontWeight;

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        color: widget.color,
        fontWeight: widget.fontWeight,
        fontFamily: "Inter",
        fontStyle: FontStyle.normal,
        fontSize: widget.fontSize ?? 18.sp,
        overflow: TextOverflow.ellipsis,
        height: widget.height,
      ),
      maxLines: widget.maxLine,
      textAlign: widget.textAlign,
    );
  }
}
