import 'dart:async';
import 'package:api_with_elbono/core/constants/app_assets.dart';
import 'package:api_with_elbono/core/constants/app_colors.dart';
import 'package:api_with_elbono/core/features/auth/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  Timer? _timer ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginView(),));
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer!.cancel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: AppColors.primary,
      body: Column(
        children: [
          Gap(120),
          Spacer(),
          Hero(tag: "logo",child: Image.asset(AppAssets.branding)),
          Spacer(),
          Image.asset(AppAssets.burger),
        ],
      ),

    );
  }
}
