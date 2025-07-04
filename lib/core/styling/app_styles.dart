import 'package:flutter/material.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_fonts.dart';

class AppStyles{
  static TextStyle primaryHeadlineStyle = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 30.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle subtitleStyle = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 16.sp,
    color: AppColors.secondaryColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle black16w600Style = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 16.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle black18w600Style = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 18.sp,
    color: Color(0xff0E0D0D),
    fontWeight: FontWeight.w600,
  );
  static  TextStyle grey12MediumStyle = TextStyle(
      fontFamily: AppFonts.mainFont,
      fontSize: 12.sp,
      color: AppColors.neutralGreyColor,
      fontWeight: FontWeight.w500
  );
  static  TextStyle black15w700Style = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 15.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w700,
  );
  static  TextStyle gery14w600Style = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 14.sp,
    color: AppColors.geryColor,
    fontWeight: FontWeight.w600,
  );
  static TextStyle  neutralWhite12w700Style = TextStyle(
    fontFamily: AppFonts.mainFont,
    fontSize: 12,
    color: AppColors.neutralWhiteColor,
    fontWeight: FontWeight.w700
  );
  static TextStyle neutralWhite15w500Style = TextStyle(
      fontFamily: AppFonts.mainFont,
      fontSize: 15,
      color: AppColors.neutralWhiteColor,
      fontWeight: FontWeight.w500
  );
  static TextStyle white24w600Style = TextStyle(
      fontFamily: AppFonts.mainFont,
      fontSize: 24,
      color: AppColors.whiteColor,
      fontWeight: FontWeight.w600
  );
}