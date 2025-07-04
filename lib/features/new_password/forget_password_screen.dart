import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/routing/app_routes.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/custom_double_text.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/primary_button_widget.dart';
import '../../../core/widgets/spacing_widget.dart';
import '../../../core/widgets/back_button_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
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
                        "Forgot Password?",
                        style: AppStyles.primaryHeadlineStyle,
                      ),
                    ),
                    const HeightSpace(height: 10),
                    SizedBox(
                      width: 331.w,
                      child: Text(
                        "Don't worry! It occurs."
                            " Please enter the email address linked with your account.",
                        style: AppStyles.subtitleStyle,
                      ),
                    ),
                    const HeightSpace(height: 32),
                    CustomTextField(
                      controller: emailController,
                      hintText: "Enter your email",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter your email";
                        }
                        return null;
                      },
                    ),
                    const HeightSpace(height: 38),
                    PrimaryButtonWidget(
                      buttonText: "Send Code",
                      onPress: (){
                        if(formKey.currentState!.validate()){
                          GoRouter.of(context).pushNamed(AppRoutes.verifyOtpScreen);
                        }
                      },
                    ),
                    const HeightSpace(height: 361),
                    CustomDoubleText(headText: "Remember Password ", subText: "Login",),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
