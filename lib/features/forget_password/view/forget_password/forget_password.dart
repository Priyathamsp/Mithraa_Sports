import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/features/forget_password/view/forget_password/otp_screen.dart';

import '../../../../core/config/styles/app_colors.dart';
import '../../../login/view/login_screen/login_screen.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                        child: Icon(Icons.arrow_back_ios, size: 25.sp)),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColor.headingColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: SizedBox(
                      width: 160.w,
                      height: 35.h,
                      child: Text(
                        "Enter your Registered E-mail  to change password",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColor.greyColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 110.h,
                  ),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0.w),
                          child: Text(
                            "Enter your Registered E-mail ID",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColor.blackTextColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0.w, right: 20.w),
                          child: TextFormField(
                            style: TextStyle(
                              color: AppColor.blackTextColor,
                              fontSize: 10.sp,
                            ),
                            decoration: InputDecoration(
                              // Add border properties here
                              border: OutlineInputBorder(
                                // Customize border properties here
                                borderSide: BorderSide(
                                  color: AppColor.greyColor, // Border color
                                  width: 1.0.w, // Border width
                                ),
                                borderRadius:
                                BorderRadius.circular(8.0), // Border radius
                              ),
                              // Optionally, add placeholder text
                              hintText: 'Email Id',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60.h,
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
                                  Get.to(OtpScreen());
                                },
                                child: Container(
                                  width: 100.w,
                                  height: 30.h,
                                  alignment: Alignment.center,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Get OTP",
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
