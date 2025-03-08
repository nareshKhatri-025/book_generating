import 'package:book_generating_app/core/utils/color_util.dart';
import 'package:book_generating_app/widgets/custom_button.dart';
import 'package:book_generating_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'widgets/auth_bg_widget.dart';

class ForgetView extends StatelessWidget {
  const ForgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackgroundWidget(
        header: SafeArea(
          child: Container(
            width: 100.w,
            // height: 25.h,
            padding: EdgeInsets.all(5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2.h,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(2.w),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: ColorUtil.buttonBgColor),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  "Forget Password",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 2.h),
                Text(
                  "Please enter your registered email to get reset password",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
              width: 100.w,
            ),
            CustomTextField(hintText: "tabish@m2m.com"),
            SizedBox(height: 3.h),
            CustomButton(onTap: () {}, btnTxt: "Send reset link")
          ],
        ));
  }
}
