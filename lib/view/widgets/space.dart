import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Space {
  static h(double height) => SizedBox(
        height: height.h,
      );
  static w(double width) => SizedBox(
        width: width.w,
      );
  static hw(double height, double width) => SizedBox(
        height: height.h,
        width: width.w,
      );
}
