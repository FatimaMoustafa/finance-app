import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomHomePageItemWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String description;

  const CustomHomePageItemWidget({
    super.key,
    required this.iconData,
    required this.title,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE3E9ED), width: 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffECF1F6),
                borderRadius: BorderRadius.circular(16.r)
              ),
              child: Icon(
                iconData,
                size: 20.sp,
                color: AppColors.primaryColor,
              ),
            ),
            HeightSpace(height: 12),
            Text(
              title,
              style: AppStyles.black16w600Style,
            ),
            HeightSpace(height: 4),
            Text(
              description,
              style: AppStyles.grey12MediumStyle,
            )
          ],
        ),
      ),
    );
  }
}
