import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/utils/image_util.dart';

class AuthBackgroundWidget extends StatelessWidget {
  const AuthBackgroundWidget(
      {super.key, required this.header, required this.child});
  final Widget header;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImageUtil.logoBg,
            width: 100.w,
            fit: BoxFit.fill,
          ),
          Container(
            width: 100.w,
            child: Column(
              children: [
                header,
                cardView(child),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget cardView(Widget child) {
    return Expanded(
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.w),
          child: child,
        ),
      ),
    );
  }
}
