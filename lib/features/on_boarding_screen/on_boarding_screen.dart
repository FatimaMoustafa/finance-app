import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outlined_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
              AppAssets.onBoarding,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fitWidth,
          ),
          const HeightSpace(height: 21),
          PrimaryButtonWidget(
            onPress: (){
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
            width: 331.w,
            height: 56.h,
            buttonText: "Login",
          ),
          const HeightSpace(height: 15),
          PrimaryOutlinedButtonWidget(
            onPress: (){
              GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
            },
            width: 331.w,
            height: 56.h,
            buttonText: "Register",
          ),
          const HeightSpace(height: 46),
          Text(
            "Continue as a guest",
            style: AppStyles.black15w700Style.copyWith(decoration: TextDecoration.underline),)
        ],
      ),
    );
  }
}
