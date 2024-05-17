import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/features/records/view/records.dart';

import '../../../core/config/styles/app_colors.dart';
import '../../../core/utils/shared/components/widgets/bottom_navigation_bar.dart';
import '../../home_screen/view/home_screen.dart';

class MyRecords extends StatefulWidget {
  const MyRecords({super.key});

  @override
  State<MyRecords> createState() => _MyRecordsState();
}

class _MyRecordsState extends State<MyRecords> {
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
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(Records());
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 20.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 60.w,
                      ),
                      Text(
                        "My Records",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColor.headingColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: 40.h,
                      width: 150.w,
                      child: DropdownButtonFormField(
                        items: <String>[
                          '3-3-3',
                          '3-6-3',
                          'Cycle',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (selectedItem) {},
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: AppColor.blackTextColor),
                          labelText: 'Select Game Type',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.r),
                          ),
                          fillColor: AppColor.whiteColor,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  width: 250.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    color: AppColor.containerColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("#1", style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "Poppins-Medium",
                        color: AppColor.blackTextColor,
                      ),
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
                    borderRadius: BorderRadius.circular(5.r),
                    color: AppColor.containerColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("#2", style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "Poppins-Medium",
                        color: AppColor.blackTextColor,
                      ),
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
                    borderRadius: BorderRadius.circular(5.r),
                    color: AppColor.containerColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0.w),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("#3", style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: "Poppins-Medium",
                        color: AppColor.blackTextColor,
                      ),
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
