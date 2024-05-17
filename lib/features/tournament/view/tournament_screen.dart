import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/features/home_screen/view/home_screen.dart';
import '../../../core/config/styles/app_colors.dart';
import '../../../core/utils/shared/components/widgets/bottom_navigation_bar.dart';

class Tournament extends StatefulWidget {
  const Tournament({super.key});

  @override
  State<Tournament> createState() => _TournamentState();
}

class _TournamentState extends State<Tournament> {
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
                            "Tournament",
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
                  height: 90.h,
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
                            padding: EdgeInsets.only(left: 8.0.w),
                            child: Text(
                              "Enter Tournament Name",
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
                            padding: EdgeInsets.only(right: 8.0.w),
                            child: Text(
                              "Open/Close",
                              style: TextStyle(
                                  color: AppColor.blackTextColor,
                                  fontFamily: "Poppins-Medium",
                                  fontSize: 12.sp),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 150.w,
                            height: 50.h,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0.w),
                              child: Text(
                                "Enter Tournament Venue",
                                style: TextStyle(
                                  color: AppColor.blackTextColor,
                                  fontSize: 10.sp,
                                  fontFamily: "Poppins-Regular",
                                ),
                              ),
                            ),
                          ),
                          Spacer(flex: 1,),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0.w),
                            child: Align(
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
                                    borderRadius: BorderRadius.circular(5.0.r),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                    //  Get.to(PracticeScreen2());
                                    },
                                    child: Container(
                                      width: 70.w,
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
                          ),
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
