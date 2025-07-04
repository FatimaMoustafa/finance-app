import 'package:flutter/material.dart';

import '../styling/app_colors.dart';
import '../styling/app_styles.dart';
class CustomDoubleText extends StatelessWidget {
  final String headText;
  final String subText;
  const CustomDoubleText({
    super.key,
    required this.headText,
    required this.subText
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(text: TextSpan(
          text: headText,
          style: AppStyles.subtitleStyle.copyWith(color: AppColors.primaryColor),
          children: [
            TextSpan(
                text: subText,
                style: AppStyles.black15w700Style
            )
          ]
      )),
    );
  }
}
