import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../core/routing/app_routes.dart';
import '../../core/styling/app_styles.dart';
import '../../core/widgets/primary_button_widget.dart';
import '../../core/widgets/spacing_widget.dart';
import '../../core/widgets/back_button_widget.dart';
import '../../core/widgets/custom_double_text.dart';
class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController pinCodeController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pinCodeController = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child:Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeightSpace(height: 12),
                    BackButtonWidget(),
                    const HeightSpace(height: 28),
                    SizedBox(
                      width: 244.w,
                      child: Text(
                        "OTP Verification",
                        style: AppStyles.primaryHeadlineStyle,
                      ),
                    ),
                    const HeightSpace(height: 10),
                    SizedBox(
                      width: 331.w,
                      child: Text(
                        "Enter the verification code we just sent on your email address.",
                        style: AppStyles.subtitleStyle,
                      ),
                    ),
                    const HeightSpace(height: 32),
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      controller: pinCodeController,
                      obscureText: true,
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      textStyle: AppStyles.primaryHeadlineStyle.copyWith(fontSize: 22.sp),
                      pinTheme: PinTheme(
                        fieldWidth: 70.w,
                        fieldHeight: 60.h,
                        shape: PinCodeFieldShape.box,
                        borderWidth: 1.sp,
                        borderRadius: BorderRadius.circular(8.r),
                        selectedColor: AppColors.primaryColor,
                        selectedFillColor: AppColors.whiteColor,
                        activeColor: AppColors.primaryColor,
                        activeFillColor: AppColors.whiteColor,
                        inactiveColor: AppColors.neutralGreyColor,
                        inactiveFillColor: AppColors.fillColor
                      ),
                    ),
                    const HeightSpace(height: 38),
                    PrimaryButtonWidget(
                      buttonText: "Verify",
                      onPress: (){
                        if(formKey.currentState!.validate()){
                          GoRouter.of(context).pushNamed(AppRoutes.createNewPasswordScreen);
                        }
                      },
                    ),
                    const HeightSpace(height: 335),
                    CustomDoubleText(headText: "Didn’t received code? ", subText: "Resend",),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
