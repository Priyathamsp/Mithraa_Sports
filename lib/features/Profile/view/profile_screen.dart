import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/core/utils/shared/constants/assets_pathes.dart';

import '../../../core/config/styles/app_colors.dart';
import '../../../core/utils/shared/components/widgets/bottom_navigation_bar.dart';
import '../../home_screen/view/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: AppColor.appMainColor,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 280.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.r), // Adjust as needed
                      bottomRight: Radius.circular(15.r), // Adjust as needed
                    ),
                    color: AppColor.whiteColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Get.width * 0.10,
                        child: InkWell(
                          onTap: () {
                            Get.to(HomeScreen(),
                                transition: Transition.leftToRightWithFade);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20.sp,
                            color: AppColor.headingColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.05,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Profile",
                            style: TextStyle(
                                fontSize: 16.sp, color: AppColor.headingColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.15,
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: 280.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.r), // Adjust as needed
                          bottomRight:
                              Radius.circular(15.r), // Adjust as needed
                        ),
                        color: AppColor.lightBlueColor,
                      ),
                    ),
                    Positioned(
                      left: 150,
                      top: 20,
                      child: Container(
                        width: 60.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            color: AppColor.lightBlueColor,
                            borderRadius: BorderRadius.circular(90.r),
                            border: Border.all(
                                color: AppColor.blueColor, width: 1)),
                      ),
                    ),
                    Positioned(
                      left: 153.5,
                      top: 23,
                      child: Container(
                        width: 55.w,
                        height: 55.h,
                        decoration: BoxDecoration(
                            color: AppColor.lightBlueColor,
                            borderRadius: BorderRadius.circular(90.r),
                            border: Border.all(
                                color: AppColor.blueColor, width: 5)),
                        child: Image(
                          image: AssetImage(AssetsPathes.profileImage),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 215,
                      top: 80,
                      child: Container(
                        width: 12.w,
                        height: 12.h,
                        decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(3.r),
                            border: Border.all(
                                width: 1, color: AppColor.greyColor)),
                        child: Icon(
                          Icons.edit,
                          size: 10.sp,
                          color: AppColor.headingColor,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 152,
                      top: 100,
                      child: Text(
                        'Sunder',
                        // '${driverProfileController.driver_name.value}',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontFamily: 'Inter-Regular',
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 240,
                        top: 110,
                        child: Container(
                          width: 15.w,
                          height: 15.h,
                          decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(3.r),
                              border: Border.all(
                                  width: 1, color: AppColor.greyColor)),
                          child: Center(
                            child: Icon(
                              Icons.edit,
                              size: 10.sp,
                              color: AppColor.headingColor,
                            ),
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 250.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    border:
                        Border.all(width: 0.75.w, color: AppColor.greyColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'Student Id: ',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-SemiBold",
                                fontSize: 12.sp),
                          ),
                          Text(
                            'MITH1002',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-Regular",
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 250.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    border:
                        Border.all(width: 0.75.w, color: AppColor.greyColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'Student School: ',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-SemiBold",
                                fontSize: 12.sp),
                          ),
                          Text(
                            'Kamaraj Mat. Hr. Sec. School',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-Regular",
                                fontSize: 10.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 250.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    border:
                        Border.all(width: 0.75.w, color: AppColor.greyColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'Coach Name: ',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-SemiBold",
                                fontSize: 12.sp),
                          ),
                          Text(
                            'Dharmaprabu',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-Regular",
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 250.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(5.r),
                    border:
                        Border.all(width: 0.75.w, color: AppColor.greyColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'District: ',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-SemiBold",
                                fontSize: 12.sp),
                          ),
                          Text(
                            'Chennai',
                            style: TextStyle(
                                color: AppColor.darkGreyColor,
                                fontFamily: "Poppins-Regular",
                                fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBarWidget(
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
