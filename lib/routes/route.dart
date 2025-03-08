import 'package:book_generating_app/views/auth/verification_otp_view.dart';
import 'package:book_generating_app/widgets/success_widget.dart';
import 'package:flutter/material.dart';

import '../views/view.dart';

class Routes {
  static String intial = "/";
  static String login = "/login";
  static String forget = "/forget";
  static String signup = "/signup";
  static String otp = "/otp";

  static String success = "/success";

  static Map<String, WidgetBuilder> routes = {
    intial: (context) => const SplashView(),
    login: (context) => const LoginView(),
    signup: (context) => const SignUpView(),
    otp: (context) => const VerificationOtpView(),
    success: (context) => const SuccessWidget()
  };
}
