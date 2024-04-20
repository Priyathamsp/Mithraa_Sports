import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/features/login/view/login_screen/login_screen.dart';

import '../../../../core/config/styles/app_colors.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                      "Change Password",
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
                    child: Text(
                      "Enter the  Password to change the password",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColor.greyColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                color: AppColor.greyColor,
                              ),
                              border: OutlineInputBorder(
                                // Customize border properties here
                                borderSide: BorderSide(
                                  color: AppColor.greyColor, // Border color
                                  width: 1.0.w, // Border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    8.0.r), // Border radius
                              ),
                              hintText: 'Set your password',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0.w),
                          child: Text(
                            "Confirm Password",
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
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                color: AppColor.greyColor,
                              ),
                              border: OutlineInputBorder(
                                // Customize border properties here
                                borderSide: BorderSide(
                                  color: AppColor.greyColor, // Border color
                                  width: 1.0.w, // Border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    8.0.r), // Border radius
                              ),
                              hintText: 'Confirm your password',
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
                                  Get.to(LoginScreen());
                                },
                                child: Container(
                                  width: 100.w,
                                  height: 30.h,
                                  alignment: Alignment.center,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Submit",
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
