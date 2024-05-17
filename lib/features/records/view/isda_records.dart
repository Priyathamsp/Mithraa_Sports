import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/features/records/view/records.dart';

import '../../../core/config/styles/app_colors.dart';
import '../../../core/utils/shared/components/widgets/bottom_navigation_bar.dart';
import '../../home_screen/view/home_screen.dart';

class IsdaRecords extends StatefulWidget {
  const IsdaRecords({super.key});

  @override
  State<IsdaRecords> createState() => _IsdaRecordsState();
}

class _IsdaRecordsState extends State<IsdaRecords> {
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
                            Get.to(Records(),
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
                            "ISDA Records",
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
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0.w,top: 8.w),
                      child: SizedBox(
                        height: 58.h,
                        width: 75.w,
                        child: DropdownButtonFormField(
                          items: <String>[
                            'Male',
                            'Female',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (selectedItem) {},
                          decoration: InputDecoration(
                            fillColor: AppColor.whiteColor,
                            filled: true,
                            labelStyle:
                                TextStyle(color: AppColor.blackTextColor),
                            labelText: 'Gender',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.0.w, top: 8.w),
                      child: SizedBox(
                        height: 58.h,
                        width: 80.w,
                        child: DropdownButtonFormField(
                          items: <String>[
                            '10-15',
                            '15-20',
                            '20-25',
                            '25-30',
                            '30-35',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (selectedItem) {},
                          decoration: InputDecoration(
                            fillColor: AppColor.whiteColor,
                            filled: true,
                            labelStyle: TextStyle(color: AppColor.blackTextColor),
                            labelText: 'Age',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r)
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.0.w, top: 8.w, right: 8.w),
                      child: SizedBox(
                        height: 58.h,
                        width: 95.w,
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
                            fillColor: AppColor.whiteColor,
                            filled: true,
                            labelStyle:
                                TextStyle(color: AppColor.blackTextColor),
                            labelText: 'Game Type',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.r)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
