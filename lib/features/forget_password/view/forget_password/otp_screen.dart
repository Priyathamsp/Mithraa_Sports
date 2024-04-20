import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mithraa_sports/features/forget_password/view/forget_password/change_password.dart';
import '../../../../core/config/styles/app_colors.dart';
import '../../../../core/utils/helpers/cache_helper/cache_helper.dart';
import '../../../login/view/login_screen/login_screen.dart';

class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
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
                    height: 70.h,
                  ),
                  Center(
                    child: Text(
                      "Check Your Phone",
                      style: TextStyle(
                        fontSize: 24.sp,
                        color: AppColor.blackTextColor,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "We’ve send the code to your phone",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColor.greyColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, bottom: 10.w),
                          child: Text(
                            "Enter OTP",
                            style: TextStyle(
                              fontFamily: "Inter-Regular",
                              fontSize: 15.sp,
                              color: AppColor.blackTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0.w, right: 10.w),
                        child: SizedBox(
                          width: 50.w,
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
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0.w, right: 10.w),
                        child: SizedBox(
                          width: 50.w,
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
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0.w, right: 10.w),
                        child: SizedBox(
                          width: 50.w,
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
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0.w, right: 10.w),
                        child: SizedBox(
                          width: 50.w,
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
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Material(
                      color: Colors.transparent,
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF141356), Color(0xFF0095DA)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.0, 0.9],
                            tileMode: TileMode.clamp,
                          ),
                          borderRadius: BorderRadius.circular(15.0.r),
                        ),
                        child: InkWell(
                          onTap: () {
                            Get.to(ChangePassword());

                          },
                          child: Container(
                            width: 100.w,
                            height: 30.h,
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Validate",
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
          ),
        ),
      ),
    );
  }
}
