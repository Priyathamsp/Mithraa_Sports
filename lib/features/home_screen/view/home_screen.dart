import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/core/config/styles/app_colors.dart';
import 'package:mithraa_sports/features/menu/view/drawer.dart';

import '../../../core/utils/shared/components/widgets/bottom_navigation_bar.dart';
import '../../../core/utils/shared/components/widgets/line_graph_widget.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';
import 'package:fl_chart/fl_chart.dart'; // Import fl_chart package

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 280.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.r),
                        bottomRight: Radius.circular(15.r),
                      ),
                      color: AppColor.whiteColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: Get.width * 0.10,
                          child: InkWell(
                            onTap: () {
                              Get.to(DrawerWidget(),
                                  transition: Transition.leftToRightWithFade);
                            },
                            child: Icon(
                              Icons.menu,
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
                            child: SizedBox(
                              width: 80.w,
                              height: 40.h,
                              child: Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  AssetsPathes.appLogoImage,
                                  width: 80.w,
                                  height: 40.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.15,
                        ),
                        Icon(
                          Icons.notifications,
                          color: AppColor.headingColor,
                          size: 20.sp,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50), // Adjust vertical spacing
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 20), // Adjust horizontal spacing
                        Container(
                          width: 250.w,
                          height: 180.h,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Image.asset(
                                  AssetsPathes.slidelogo,
                                  width: 250.w,
                                  height: 180.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '3-3-3 Tournament',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      'Browse 860382 incredible Game vectors, icons, clipart graphics, and backgrounds for royalty-free download from the creative',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      '⭐ ⭐ ⭐',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20), // Adjust horizontal spacing
                        Container(
                          width: 250.w,
                          height: 180.h,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Image.asset(
                                  AssetsPathes.slidelogo,
                                  width: 250.w,
                                  height: 180.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '3-3-3 Tournament',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      'Browse 860382 incredible Game vectors, icons, clipart graphics, and backgrounds for royalty-free download from the creative',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      '⭐ ⭐ ⭐',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20), // Adjust horizontal spacing
                        Container(
                          width: 250.w,
                          height: 180.h,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Image.asset(
                                  AssetsPathes.slidelogo,
                                  width: 250.w,
                                  height: 180.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '3-3-3 Tournament',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      'Browse 860382 incredible Game vectors, icons, clipart graphics, and backgrounds for royalty-free download from the creative',
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      '⭐ ⭐ ',
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20), // Adjust horizontal spacing
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Performance Report",
                    style: TextStyle(
                      fontSize: 18.sp,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
                      color: AppColor.blackTextColor,
                    ),
                  ),
                  SizedBox(height: 50), // Adjust vertical spacing
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LineGraphWidget(),
                  ),
                  SizedBox(height: 50), // Adjust vertical spacing
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LineGraphWidget(),
                  ),
                  SizedBox(height: 50), // Adjust vertical spacing
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LineGraphWidget(),
                  ),
                  SizedBox(height: 50), // Adjust vertical spacing
                  Center(
                    child: Text(
                      "Performance Report",
                      style: TextStyle(
                        fontSize: 18.sp,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
                        color: AppColor.blackTextColor,
                      ),
                    ),
                  ),
                  // Add the Pie Chart under the Performance Report text
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 15.0.w),
                      child: Container(
                        width: 250.w, // Adjust the width of the container as needed
                        height: 250.h, // Adjust the height of the container as needed
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.white, // Adjust the color of the container as needed
                          border: Border.all(
                            color: Colors.black, // Adjust the color of the border as needed
                            width: 1.0.w, // Adjust the width of the border as needed
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: PieChart(
                                  PieChartData(
                                    sections: [
                                      PieChartSectionData(
                                        color: Colors.deepPurple,
                                        value: 40,
                                        title: '3-3-6',
                                        radius: 50,
                                        titleStyle: TextStyle(color: Colors.white),
                                      ),
                                      PieChartSectionData(
                                        color: Colors.lightBlue,
                                        value: 30,
                                        title: '3-3-3',
                                        radius: 50,
                                        titleStyle: TextStyle(color: Colors.white),
                                      ),
                                      PieChartSectionData(
                                        color: Colors.blue,
                                        value: 30,
                                        title: 'cycle',
                                        radius: 50,
                                        titleStyle: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                    pieTouchData: PieTouchData(
                                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                                        if (!event.isInterestedForInteractions || pieTouchResponse == null || pieTouchResponse.touchedSection == null) {
                                          return;
                                        }
                                        setState(() {
                                          // Handle the touch event
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Total Games",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "80",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        color: Colors.black,
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
                ],
              ),
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