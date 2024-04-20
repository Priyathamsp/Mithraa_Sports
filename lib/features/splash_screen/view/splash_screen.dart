import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/config/styles/app_colors.dart';
import '../../../core/utils/helpers/cache_helper/cache_helper.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import '../../login/view/login_screen/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      checkLoginStatus();
    });
  }

  void checkLoginStatus() async {
    final storedValue = await CacheHelper.getData('cusid');
    if (storedValue != null && storedValue.isNotEmpty) {
      Get.offAll(const LoginScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        width: 500.w, // Adjust width to 500
        height: 500.h, // Adjust height to 500
        child: Image.asset(
          AssetsPathes.appLogoImage,
          height: 500.h, // Adjust height to fill the container
          width: double.infinity,
          alignment: Alignment.center,
        ),
      ),
      nextScreen: LoginScreen(),
      splashTransition: SplashTransition.sizeTransition,
      duration: 3000,
    );
  }
}
