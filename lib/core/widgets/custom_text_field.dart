import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final double? width;
  final double? height;
  final Color? textColor;
  final Color? color;
  final double? fontSize;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.width,
    this.height,
    this.textColor,
    this.color,
    this.fontSize,
    this.isPassword,
    this.controller,
    this.validator
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56.h,
      width: width ?? 331.w,
      child: TextFormField(
        controller: controller,
        validator: validator,
        autofocus: false,
        cursorColor: AppColors.primaryColor,
        obscureText: isPassword ?? false,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: TextStyle(
              fontSize: fontSize ?? 15.sp,
              fontWeight: FontWeight.w500,
              color: textColor ?? AppColors.geryColor,
          ),
          filled: true,
          fillColor: Color(0xffF7F8F9),
          contentPadding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.fillColor, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
