import 'package:book_generating_app/core/utils/color_util.dart';
import 'package:book_generating_app/core/utils/image_util.dart';
import 'package:book_generating_app/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'widgets/auth_bg_widget.dart';
import 'widgets/login_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackgroundWidget(
      header: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 4.w, right: 4.w, left: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4.h,
              ),
              Center(child: Image.asset(ImageUtil.loginLogo)),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Sign in",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  Text(
                    "New User? ",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, Routes.signup),
                    child: Text(
                      "Create an Account",
                      style: TextStyle(color: ColorUtil.primary, fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      child: LoginContent(),
    );
  }
}
