import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/core/config/styles/app_colors.dart';
import 'package:mithraa_sports/features/practice/view/practice_screen2.dart';

import '../../../core/utils/shared/constants/assets_pathes.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});
  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: AppColor.appMainColor,
          body: Container(
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
                      Text(
                        "Practice",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColor.headingColor,
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.history,
                              color: AppColor.headingColor,
                              size: 20.sp,
                            ),
                            Text(
                              "History",
                              style: TextStyle(
                                  fontSize: 8.sp,
                                  color: AppColor.blackTextColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0.w),
                  child: SizedBox(
                    height: 58.h,
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
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF264473),
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.front_hand_rounded,
                          size: 80.sp,
                          color: Color(0xFFACDFF6),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "00:00:00",
                          style: TextStyle(fontSize: 20.sp),
                        ),
                        Text(
                          "Click to start the game",
                          style: TextStyle(fontSize: 8.sp, color: AppColor.darkGreyColor),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Align(
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
                                  Get.to(PracticeScreen2());
                                },
                                child: Container(
                                  width: 70.w,
                                  height: 30.h,
                                  alignment: Alignment.center,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Start",
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
                      ],
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF264473),
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.back_hand_rounded,
                          size: 80.sp,
                          color: Color(0xFFACDFF6),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
