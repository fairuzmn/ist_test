import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPositionedEllipse extends StatelessWidget {
  const CustomPositionedEllipse({super.key, this.top, this.bottom, this.right, this.left, required this.color, this.height, this.width});

  final double? top, bottom, right, left;
  final double? height, width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: ClipOval(
        child: Container(
          color: color,
          height: height ?? 460.h,
          width: width ?? 460.h,
        ),
      ),
    );
  }
}
