import 'package:book_generating_app/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/utils/color_util.dart';
import '../../widgets/widgets.dart';
import 'widgets/auth_bg_widget.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerificationOtpView extends StatefulWidget {
  const VerificationOtpView({super.key});

  @override
  State<VerificationOtpView> createState() => _VerificationOtpViewState();
}

class _VerificationOtpViewState extends State<VerificationOtpView> {
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
                  "Verification Code",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 2.h),
                Text(
                  "Please enter your code you have received through email.",
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
            OtpTextField(
              fieldWidth: 100.w / 10,
              margin: EdgeInsets.symmetric(horizontal: 10),
              numberOfFields: 6,
              borderColor: ColorUtil.primary,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
            SizedBox(height: 3.h),
            CustomButton(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Routes.success, (_) => false,
                      arguments: {"from": Routes.otp});
                },
                btnTxt: "Continue"),
            SizedBox(height: 3.h),
            Row(
              children: [
                Text(
                  "Didn't get the code. ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Resend",
                  style: TextStyle(color: ColorUtil.primary, fontSize: 16),
                )
              ],
            )
          ],
        ));
    ;
  }
}
