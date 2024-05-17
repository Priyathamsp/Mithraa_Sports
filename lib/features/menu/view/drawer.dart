import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/core/config/styles/app_colors.dart';
import 'package:mithraa_sports/features/About_us/view/about_us.dart';
import 'package:mithraa_sports/features/Analytics/view/analytics.dart';
import 'package:mithraa_sports/features/Profile/view/profile_screen.dart';
import 'package:mithraa_sports/features/history/view/history.dart';
import 'package:mithraa_sports/features/home_screen/view/home_screen.dart';
import 'package:mithraa_sports/features/learn/view/learn_screen.dart';
import 'package:mithraa_sports/features/notification/view/notifications.dart';
import 'package:mithraa_sports/features/practice/view/practice_screen.dart';
import 'package:mithraa_sports/features/records/view/records.dart';
import 'package:mithraa_sports/features/tournament/view/tournament_screen.dart';

import '../../logout/controller/log_out_controller.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final LogOutController logOutController = Get.put(LogOutController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF141356), Color(0xFF0095DA)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.9],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: Wrap(
          runSpacing: 10,
          children: [
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Column(
                children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.0.w),
                          child: Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.account_circle_rounded,
                              color: AppColor.whiteColor,
                              size: 30.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 12.w, top: 5.w, bottom: 5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Student Name",
                                style: TextStyle(
                                    color: AppColor.whiteColor,
                                    fontFamily: "Poppins-Medium",
                                    fontSize: 14.sp),
                              ),
                              Opacity(
                                opacity: 0.75,
                                child: Text(
                                  "Student Id",
                                  style: TextStyle(
                                      color: AppColor.whiteColor,
                                      fontFamily: "Poppins-Regular",
                                      fontSize: 12.sp),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Divider(
                      indent: 10.h,
                      endIndent: 11.h,
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
              InkWell(
                onTap: () {
                  Get.back();
                  Get.to(ProfileScreen(),
                      transition: Transition.leftToRightWithFade);
                },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      leading: Icon(Icons.person),
                      title: Text(
                        "Profile",
                        style: TextStyle(color: AppColor.whiteColor),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
              ),
                  InkWell(
                    onTap: () {
                      Get.back();
                      Get.to(PracticeScreen(),
                          transition: Transition.leftToRightWithFade);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(Icons.timer),
                        title: Text(
                          "Practice",
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                      Get.to(History(),
                          transition: Transition.leftToRightWithFade);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(Icons.history),
                        title: Text(
                          "History",
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                      Get.to(Records(),
                          transition: Transition.leftToRightWithFade);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(Icons.record_voice_over_sharp),
                        title: Text(
                          "Records",
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                      Get.to(LearnScreen(),
                          transition: Transition.leftToRightWithFade);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(Icons.auto_stories_outlined),
                        title: Text(
                          "Learn",
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                      Get.to(NotificationScreen(),
                          transition: Transition.leftToRightWithFade);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(Icons.notifications),
                        title: Text(
                          "Notification",
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back(); // Close the current screen
                      Future.delayed(Duration(milliseconds: 300), () {
                        Get.to(Tournament(),
                            transition: Transition.leftToRightWithFade);
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(Icons.leaderboard_rounded),
                        title: Text(
                          "Tournaments",
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back(); // Close the current screen
                      Future.delayed(Duration(milliseconds: 300), () {
                        Get.to(Analytics(),
                            transition: Transition.leftToRightWithFade);
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(Icons.analytics_outlined),
                        title: Text(
                          "Analytics",
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back(); // Close the current screen
                      Future.delayed(Duration(milliseconds: 300), () {
                        Get.to(AboutUs(),
                            transition: Transition.leftToRightWithFade);
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(Icons.info),
                        title: Text(
                          "About Us",
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                      logOutController.logout();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(Icons.logout_rounded),
                        title: Text(
                          "Logout",
                          style: TextStyle(color: AppColor.whiteColor),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward,
                          color: AppColor.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: AppColor.appMainColor,
      ),
    );
  }
}
