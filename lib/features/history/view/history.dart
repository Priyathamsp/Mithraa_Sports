import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/features/history/controller/history_controller.dart';
import 'package:mithraa_sports/features/home_screen/view/home_screen.dart';

import '../../../core/config/styles/app_colors.dart';
import '../../../core/utils/shared/components/widgets/bottom_navigation_bar.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
                            "History",
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
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 250.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                      color: AppColor.containerColor,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0.w),
                            child: Text(
                              "Game Type: 3-3-3",
                              style: TextStyle(
                                color: AppColor.blackTextColor,
                                fontSize: 14.sp,
                                fontFamily: "Poppins-SemiBold",
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15.0.w),
                            child: Text(
                              "Date",
                              style: TextStyle(
                                  color: AppColor.blackTextColor,
                                  fontFamily: "Poppins-Medium",
                                  fontSize: 12.sp),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0.w),
                            child: Text(
                              "Timing: 00.10",
                              style: TextStyle(
                                color: AppColor.blackTextColor,
                                fontSize: 14.sp,
                                fontFamily: "Poppins-Regular",
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15.0.w),
                            child: Text(
                              "Time",
                              style: TextStyle(
                                  color: AppColor.blackTextColor,
                                  fontFamily: "Poppins-Regular",
                                  fontSize: 12.sp),
                            ),
                          )
                        ],
                      ),
                    ],
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
