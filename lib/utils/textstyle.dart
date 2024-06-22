import 'package:brainwired/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontStyles {
  static const themeFont = "NotoSans";

  static TextStyle textbutton = TextStyle(
      fontSize: 16.sp,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.w400,
      color: ColorPalette.primaryColor,
      fontFamily: themeFont);
}
