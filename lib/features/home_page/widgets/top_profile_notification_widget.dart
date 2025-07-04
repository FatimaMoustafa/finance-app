import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/styling/app_assets.dart';
import '../../../core/styling/app_colors.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/spacing_widget.dart';
class TopProfileNotificationWidget extends StatefulWidget {
  const TopProfileNotificationWidget({super.key});

  @override
  State<TopProfileNotificationWidget> createState() => _TopProfileNotificationWidgetState();
}

class _TopProfileNotificationWidgetState extends State<TopProfileNotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.asset(
                AppAssets.profile,
                width: 48.w,
                height: 48.h,
                fit: BoxFit.fill,
              ),
            ),
            WidthSpace(width: 11),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Welcome back",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.neutralGreyColor
                    )
                ),
                HeightSpace(height: 2),
                Text(
                  "Fatma Mostafa",
                  style: AppStyles.black18w600Style,
                )
              ],
            ),
          ],
        ),
        Container(
          width: 48.w,
          height: 48.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xffE3E9ED), width: 1),
          ),
          child: Icon(Icons.notifications, size: 24.sp, color: AppColors.primaryColor,),
        )
      ],
    );
  }
}
