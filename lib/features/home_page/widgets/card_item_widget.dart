import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CardItemWidget extends StatefulWidget {
  final String cardName;
  final int balance;
  final int cardNumber;
  final String date;

  const CardItemWidget({
    super.key,
    required this.cardName,
    required this.balance,
    required this.cardNumber,
    required this.date
  });

  @override
  State<CardItemWidget> createState() => _CardItemWidgetState();
}

class _CardItemWidgetState extends State<CardItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 263.h,
          width: 207.w,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer2,
            width: 207.w,
            height: 207.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer1,
            width: 143.w,
            height: 143.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 24.h,
          bottom: 24.h,
          right: 24.w,
          left: 24.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.cardName,
                style: AppStyles.neutralWhite12w700Style,
              ),
              HeightSpace(height: 57),
              Text(
                "Balance",
                style: AppStyles.neutralWhite15w500Style,
              ),
              HeightSpace(height: 8),
              Text(
                "${widget.balance} EG",
                style: AppStyles.white24w600Style,
              ),
              HeightSpace(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "****  ${widget.cardNumber}",
                    style: AppStyles.neutralWhite15w500Style,
                  ),
                  Text(
                    widget.date,
                    style: AppStyles.neutralWhite15w500Style.copyWith(fontSize: 12.sp),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
