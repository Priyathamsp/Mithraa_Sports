import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mithraa_sports/core/config/styles/app_colors.dart';

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
          icon: Icon(Icons.home, size: 20.sp,),
          label: 'Home',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.speed_rounded, size: 20.sp,),
          label: 'Practice',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history, size: 20.sp,),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.leaderboard, size: 20.sp,),
          label: 'Tournament',
        ),
      ],
    );
  }
}
