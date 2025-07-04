import 'package:flutter/material.dart';
import '../../../core/styling/app_assets.dart';
import 'custom_icon_button.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(onTap: (){}, iconPath: AppAssets.facebookSVGIcon,),
        CustomIconButton(onTap: (){}, iconPath: AppAssets.googleSVGIcon,),
        CustomIconButton(onTap: (){}, iconPath: AppAssets.appleSVGIcon,),
      ],
    );
  }
}
