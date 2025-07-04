import 'package:finance_app/core/styling/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/routing/app_routes.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/primary_button_widget.dart';
import '../../../core/widgets/spacing_widget.dart';


class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HeightSpace(height: 248),
                SizedBox(
                  width: 100.w,
                  height: 100.h,
                  child: Image.asset(AppAssets.successMark),
                ),
                const HeightSpace(height: 35),
                SizedBox(
                  width: 300.w,
                  child: Text(
                    "Password Changed!",
                    style: AppStyles.primaryHeadlineStyle,
                  ),
                ),
                const HeightSpace(height: 8),
                SizedBox(
                  width: 260.w,
                  child: Text(
                    "Your password has been changed successfully.",
                    style: AppStyles.subtitleStyle,
                  ),
                ),
                const HeightSpace(height: 40),
                PrimaryButtonWidget(
                  buttonText: "Back to Login",
                  onPress: (){
                    GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}
