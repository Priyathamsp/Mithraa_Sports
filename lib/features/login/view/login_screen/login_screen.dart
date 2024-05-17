import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/features/forget_password/view/forget_password/forget_password.dart';
import 'package:mithraa_sports/features/home_screen/view/home_screen.dart';
import 'package:mithraa_sports/features/login/view/register/registration.dart';
import '../../../../core/config/styles/app_colors.dart';
import '../../../../core/utils/shared/constants/assets_pathes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: AppColor.whiteColor,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 320.w,
                      height: 150.h,
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          AssetsPathes.appLogoImage,
                          width: 375.w,
                          height: 150.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0.w),
                          child: Text(
                            "Email ID",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColor.blackTextColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0.w, right: 20.w),
                          child: TextFormField(
                            style: TextStyle(
                              color: AppColor.blackTextColor,
                              fontSize: 10.sp,
                            ),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: AppColor.greyColor,
                                ),
                              // Add border properties here
                              border: OutlineInputBorder(
                                // Customize border properties here
                                borderSide: BorderSide(
                                  color: AppColor.greyColor, // Border color
                                  width: 1.0.w, // Border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    8..r), // Border radius
                              ),
                              // Optionally, add placeholder text
                              hintText: 'Enter your Email Id',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0.w),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColor.blackTextColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0.w, right: 20.w),
                          child: TextFormField(
                            style: TextStyle(
                              color: AppColor.blackTextColor,
                              fontSize: 10.sp,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: AppColor.greyColor,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                color: AppColor.greyColor,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColor.greyColor, // Border color
                                  width: 1.0.w, // Border width
                                ),
                                borderRadius: BorderRadius.circular(8.0.r),
                              ),
                              hintText: 'Enter your password',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                Get.to(ForgetPassword());
                              },
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColor.darkGreyColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Material(
                            color: Colors.transparent,
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF141356),
                                    Color(0xFF0095DA)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [0.0, 0.9],
                                  tileMode: TileMode.clamp,
                                ),
                                borderRadius: BorderRadius.circular(15.0.r),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Get.to(HomeScreen());
                                },
                                child: Container(
                                  width: 100.w,
                                  height: 30.h,
                                  alignment: Alignment.center,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        color: AppColor.whiteColor,
                                        fontSize: 14.0.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have account?",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: AppColor.blackTextColor),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(Registration());
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 12.sp, color: AppColor.blueColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
