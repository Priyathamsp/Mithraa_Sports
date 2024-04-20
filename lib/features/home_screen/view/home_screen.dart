import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mithraa_sports/core/config/styles/app_colors.dart';
import 'package:fl_animated_linechart/fl_animated_linechart.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../../core/utils/shared/components/widgets/bottom_navigation_bar.dart';
import '../../../core/utils/shared/constants/assets_pathes.dart';

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
                        bottomLeft: Radius.circular(15.r), // Adjust as needed
                        bottomRight: Radius.circular(15.r), // Adjust as needed
                      ),
                      color: AppColor.whiteColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.menu,
                            size: 20.sp,
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Align(
                          alignment: Alignment.center,
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
                        SizedBox(
                          width: 40.w,
                        ),
                        Icon(
                          Icons.notifications,
                          color: AppColor.headingColor,
                          size: 20.sp,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Performance Report",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: AppColor.blackTextColor,
                    ),
                  ),
                  PieChart(dataMap: Map()),
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
