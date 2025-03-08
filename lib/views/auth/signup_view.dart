import 'package:book_generating_app/provider/auth_provider.dart';
import 'package:book_generating_app/views/auth/widgets/auth_bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../core/utils/color_util.dart';
import '../../core/utils/image_util.dart';
import '../../routes/route.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((c) {
      Provider.of<AuthProvider>(context, listen: false).isPasswordVisible =
          false;
    });
  }

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
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Create an Account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: ColorUtil.primary, fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      child: Consumer<AuthProvider>(
        builder: (context, authProvider, _) => Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            CustomTextField(
              hintText: "First Name",
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomTextField(
              hintText: "Last Name",
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomTextField(
              hintText: "Email",
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomTextField(
              hintText: "Password",
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
            CustomTextField(
              hintText: "Confirm Password",
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
            Row(
              children: [
                Checkbox(
                    side: BorderSide.none,
                    overlayColor: MaterialStateProperty.resolveWith(
                      (_) => ColorUtil.inputTFFillColor,
                    ),
                    focusColor: ColorUtil.inputTFFillColor,
                    checkColor: Colors.white,
                    activeColor: ColorUtil.primary,
                    fillColor: MaterialStateProperty.resolveWith((_) =>
                        authProvider.isTermsAccepted()
                            ? ColorUtil.primary
                            : ColorUtil.inputTFFillColor),
                    value: authProvider.isTermsAccepted(),
                    onChanged: (v) {
                      authProvider.onTermsCheckBoxClick();
                    }),
                Row(
                  children: [
                    Text(
                      "I Agree to the ",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        "Terms & Conditions",
                        style:
                            TextStyle(color: ColorUtil.primary, fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomButton(
              btnTxt: "Create an account",
              onTap: () {
                Navigator.pushNamed(context, Routes.otp);
              },
            )
          ],
        ),
      ),
    );
  }
}
