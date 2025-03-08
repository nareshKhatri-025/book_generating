import 'package:book_generating_app/core/utils/color_util.dart';
import 'package:book_generating_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: ColorUtil.buttonBgColor, shape: BoxShape.circle),
                child: Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                  size: 20.w,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "Verification Success, Account has been created Successfully!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomButton(onTap: () {}, btnTxt: "Continue")
          ],
        ),
      ),
    );
  }
}
