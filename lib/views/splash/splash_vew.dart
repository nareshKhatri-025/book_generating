import 'package:book_generating_app/core/utils/color_util.dart';
import 'package:book_generating_app/core/utils/image_util.dart';
import 'package:book_generating_app/routes/route.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, Routes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtil.primary,
      body: Center(
        child: Image.asset(ImageUtil.splash),
      ),
    );
  }
}
