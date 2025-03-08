import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../core/utils/color_util.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, required this.btnTxt});
  final String btnTxt;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 100.w,
      height: 12.w,
      color: ColorUtil.buttonBgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      onPressed: onTap,
      child: Text(
        btnTxt,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
