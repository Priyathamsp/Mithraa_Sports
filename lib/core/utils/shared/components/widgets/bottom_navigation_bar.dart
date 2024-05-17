import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/core/config/styles/app_colors.dart';
import 'package:mithraa_sports/features/Analytics/view/analytics.dart';
import 'package:mithraa_sports/features/home_screen/view/home_screen.dart';
import 'package:mithraa_sports/features/practice/view/practice_screen.dart';
import 'package:mithraa_sports/features/tournament/view/tournament_screen.dart';

import '../../../../../features/history/view/history.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavigationBarWidget({required this.currentIndex, required this.onTap});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColor.headingColor,
      unselectedItemColor: Colors.grey,
      onTap: widget.onTap,
        items: [
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Get.to(HomeScreen());
              },
              child: Icon(Icons.home, size: 20.sp,)),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Get.to(PracticeScreen());
              },
              child: Icon(Icons.speed_rounded, size: 20.sp,)),
          label: 'Practice',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Get.to(Analytics());
              },
              child: Icon(Icons.analytics, size: 20.sp,)),
          label: 'Analytics',
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
              onTap: () {
                Get.to(Tournament());
              },
              child: Icon(Icons.leaderboard, size: 20.sp,)),
          label: 'Tournament',
        ),
      ],
    );
  }
}
