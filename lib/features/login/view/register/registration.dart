import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/config/styles/app_colors.dart';
import '../login_screen/login_screen.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(Icons.arrow_back_ios, size: 20.sp),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 50.0.w),
                        child: Text(
                          "Registration",
                          style: TextStyle(
                              fontSize: 16.sp, color: AppColor.headingColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "Name",
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
                        hintText: 'Enter your Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "Parent/Guardian Name",
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
                        hintText: 'Enter your Parent/Guardian Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "Gender",
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
                        hintText: 'Enter your Gender',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "E-mail",
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
                        hintText: 'Enter your E-mail',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "Phone No.",
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
                        hintText: 'Enter your Phone Number',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "Date of Birth",
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
                        suffixIcon: Icon(
                          Icons.calendar_month,
                          color: AppColor.darkGreyColor,
                        ),
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
                        hintText: 'DD-MM-YYYY',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "Academic Institution Name",
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
                        hintText: 'Enter your Academic Institution Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "Address",
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
                        hintText: 'Enter your Address',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "District",
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
                        hintText: 'Enter your District',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "State",
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
                        hintText: 'Enter your State',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Text(
                      "Pincode",
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
                        hintText: 'Enter your Pincode',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22.0.w),
                    child: Text(
                      "ID Proof",
                      style: TextStyle(
                        fontFamily: "Inter-Regular",
                        fontSize: 14.sp,
                        color: AppColor.blackTextColor,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("clicked");
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0.w, right: 20.w),
                      child: Align(
                        alignment: Alignment.center,
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0.r),
                          elevation: 5.0,
                          child: Container(
                            width: 240.w,
                            height: 48.h,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0.w),
                                  child: Text(
                                    'Click to select the ID Proof',
                                    style: TextStyle(
                                      color: AppColor.blackTextColor,
                                      fontSize: 10.0.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0.w),
                                  child: Icon(CupertinoIcons.doc_fill),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 22.0.w),
                    child: Text(
                      "Profile Photo",
                      style: TextStyle(
                        fontFamily: "Inter-Regular",
                        fontSize: 14.sp,
                        color: AppColor.blackTextColor,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("clicked");
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0.w, right: 20.w),
                      child: Align(
                        alignment: Alignment.center,
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0.r),
                          elevation: 5.0,
                          child: Container(
                            width: 240.w,
                            height: 48.h,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0.w),
                                  child: Text(
                                    'Click to select the profile photo',
                                    style: TextStyle(
                                      color: AppColor.blackTextColor,
                                      fontSize: 10.0.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0.w),
                                  child: Icon(CupertinoIcons.doc_fill),
                                )
                              ],
                            ),
                          ),
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
                              Get.to(LoginScreen());
                          },
                          child: Container(
                            width: 100.w,
                            height: 30.h,
                            alignment: Alignment.center,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Register",
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
                    height:20.h
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
