import 'package:book_generating_app/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../core/utils/color_util.dart';
import '../../../routes/route.dart';
import '../../../widgets/widgets.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, authProvider, _) {
      return Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          CustomTextField(
            hintText: "Enter Email",
          ),
          SizedBox(
            height: 3.h,
          ),
          CustomTextField(
            hintText: "Enter Password",
            suffix: GestureDetector(
              onTap: () => authProvider.isPasswordVisible,
              child: Icon(authProvider.isPasswordVisible
                  ? Icons.visibility
                  : Icons.visibility_off),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, Routes.forget),
              child: Text(
                "Forgot Password",
                style: TextStyle(
                  color: ColorUtil.primary,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          CustomButton(
            btnTxt: "Sign in",
            onTap: () {},
          )
        ],
      );
    });
  }
}
