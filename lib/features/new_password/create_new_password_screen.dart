import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../../core/styling/app_styles.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/primary_button_widget.dart';
import '../../../core/widgets/spacing_widget.dart';
import '../../../core/widgets/back_button_widget.dart';
class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                      width: 292.w,
                      child: Text(
                        "Create new password",
                        style: AppStyles.primaryHeadlineStyle,
                      ),
                    ),
                    const HeightSpace(height: 10),
                    SizedBox(
                      width: 331.w,
                      child: Text(
                        "Your new password must be"
                            " unique from those previously used.",
                        style: AppStyles.subtitleStyle,
                      ),
                    ),
                    const HeightSpace(height: 32),
                    CustomTextField(
                      controller: passwordController,
                      hintText: "New Password",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Enter your password";
                        }
                        if(value.length<8){
                          return "your password must be at least 8 character";
                        }
                        return null;
                      },
                    ),
                    const HeightSpace(height: 15),
                    CustomTextField(
                      controller: confirmPasswordController,
                      hintText: "Confirm Password",
                      validator: (value){
                        if(value!.isEmpty){
                          return "Confirm your password";
                        }
                        return null;
                      },
                    ),
                    const HeightSpace(height: 38),
                    PrimaryButtonWidget(
                      buttonText: "Reset Password",
                      onPress: (){
                        if(formKey.currentState!.validate()){
                          GoRouter.of(context).pushNamed(AppRoutes.passwordChangedScreen);
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
