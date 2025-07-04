import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:finance_app/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_app/features/auth/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/widgets/custom_double_text.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
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
                      width: 280.w,
                      child: Text(
                        "Welcome back! Again!",
                        style: AppStyles.primaryHeadlineStyle,
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
                    const HeightSpace(height: 15),
                    CustomTextField(
                      controller: passwordController,
                      hintText: "Enter your password",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter your password";
                        }
                        if(value.length<8){
                          return "password must be at least 8 characters";
                        }
                        return null;
                      },
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: AppColors.geryColor,
                        size: 20.sp,
                      ),
                    ),
                    const HeightSpace(height: 15),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: (){
                          GoRouter.of(context).pushNamed(AppRoutes.forgetPasswordScreen);
                        },
                        child: Text(
                          "Forgot Password?",
                          style: AppStyles.gery14w600Style,
                        ),
                      ),
                    ),
                    const HeightSpace(height: 30),
                    PrimaryButtonWidget(
                      buttonText: "Login",
                      onPress: (){
                        if(formKey.currentState!.validate()){
                          GoRouter.of(context).pushNamed(AppRoutes.mainScreen);
                        }
                      },
                    ),
                    const HeightSpace(height: 35),
                    CustomOrTextWidget(doText: 'Login',),
                    const HeightSpace(height: 22),
                    SocialLoginButton(),
                    const HeightSpace(height: 140),
                    CustomDoubleText(headText: "Don’t have an account? ", subText: "Register Now",),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
