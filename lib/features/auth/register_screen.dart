import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:finance_app/features/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_app/features/auth/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../core/styling/app_styles.dart';
import '../../core/widgets/custom_double_text.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/primary_button_widget.dart';
import '../../core/widgets/spacing_widget.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
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
                      width: 331.w,
                      child: Text(
                        "Hello! Register to get started",
                        style: AppStyles.primaryHeadlineStyle,
                      ),
                    ),
                    const HeightSpace(height: 32),
                    CustomTextField(
                      controller: usernameController,
                      hintText: "Username",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter your username";
                        }
                        return null;
                      },
                    ),
                    const HeightSpace(height: 12),
                    CustomTextField(
                      controller: emailController,
                      hintText: "Email",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter your email";
                        }
                        return null;
                      },
                    ),
                    const HeightSpace(height: 12),
                    CustomTextField(
                      controller: passwordController,
                      hintText: "Password",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter your password";
                        }
                        if(value.length<8){
                          return "password must be at least 8 characters";
                        }
                        return null;
                      },
                    ),
                    const HeightSpace(height: 12),
                    CustomTextField(
                      controller: passwordController,
                      hintText: "Confirm Password",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Confirm your password";
                        }
                      },
                    ),
                    const HeightSpace(height: 30),
                    PrimaryButtonWidget(
                      buttonText: "Register",
                      onPress: (){
                        if(formKey.currentState!.validate()){
                          GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
                        }
                      },
                    ),
                    const HeightSpace(height: 35),
                    CustomOrTextWidget(doText: 'Register',),
                    const HeightSpace(height: 22),
                    SocialLoginButton(),
                    const HeightSpace(height: 50),
                    CustomDoubleText(headText: "Already have an account ", subText: "Login Now",),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
