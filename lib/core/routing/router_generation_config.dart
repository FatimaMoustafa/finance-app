import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/features/auth/login_screen.dart';
import 'package:finance_app/features/auth/register_screen.dart';
import 'package:finance_app/features/main_screen/main_screen.dart';
import 'package:finance_app/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:finance_app/features/verify_otp/verify_otp_screen.dart';
import 'package:go_router/go_router.dart';
import '../../features/new_password/create_new_password_screen.dart';
import '../../features/new_password/forget_password_screen.dart';
import '../../features/new_password/password_changed_screen.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoardingScreen,
      routes: [
        GoRoute(
          path: AppRoutes.onBoardingScreen,
          name: AppRoutes.onBoardingScreen,
          builder: (context, state) => const OnBoardingScreen()
        ),
        GoRoute(
            path: AppRoutes.loginScreen,
            name: AppRoutes.loginScreen,
            builder: (context, state) => const LoginScreen()
        ),
        GoRoute(
            path: AppRoutes.registerScreen,
            name: AppRoutes.registerScreen,
            builder: (context, state) => const RegisterScreen()
        ),
        GoRoute(
            path: AppRoutes.forgetPasswordScreen,
            name: AppRoutes.forgetPasswordScreen,
            builder: (context, state) => const ForgetPasswordScreen()
        ),
        GoRoute(
            path: AppRoutes.createNewPasswordScreen,
            name: AppRoutes.createNewPasswordScreen,
            builder: (context, state) => const CreateNewPasswordScreen()
        ),
        GoRoute(
            path: AppRoutes.passwordChangedScreen,
            name: AppRoutes.passwordChangedScreen,
            builder: (context, state) => const PasswordChangedScreen()
        ),
        GoRoute(
            path: AppRoutes.verifyOtpScreen,
            name: AppRoutes.verifyOtpScreen,
            builder: (context, state) => const VerifyOtpScreen()
        ),
        GoRoute(
            path: AppRoutes.mainScreen,
            name: AppRoutes.mainScreen,
            builder: (context, state) => const MainScreen()
        ),
      ]
  );
}