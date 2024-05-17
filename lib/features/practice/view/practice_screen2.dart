import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mithraa_sports/core/config/styles/app_colors.dart';

import '../../history/view/history.dart';
import '../../home_screen/view/home_screen.dart';

class PracticeScreen2 extends StatefulWidget {
  const PracticeScreen2({super.key});

  @override
  State<PracticeScreen2> createState() => _PracticeScreen2State();
}

class _PracticeScreen2State extends State<PracticeScreen2> {
  late Timer _timer;
  int _start = 15;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  String get timerText {
    int hours = _start ~/ 3600;
    int minutes = (_start % 3600) ~/ 60;
    int seconds = _start % 60;

    String hoursStr = (hours % 24).toString().padLeft(2, '0');
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = seconds.toString().padLeft(2, '0');

    return '$hoursStr:$minutesStr:$secondsStr';
  }

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
                            "Practice",
                            style: TextStyle(
                                fontSize: 16.sp, color: AppColor.headingColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(History());
                        },
                        child: Padding(
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
                          timerText,
                          style: TextStyle(fontSize: 20.sp, color: Colors.red),
                        ),
                        Text(
                          "Click to start the game",
                          style: TextStyle(fontSize: 8.sp, color: AppColor.darkGreyColor),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
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
                                    onTap: (){

                                    },
                                    child: Container(
                                      width: 50.w,
                                      height: 30.h,
                                      alignment: Alignment.center,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(
                                            color: AppColor.whiteColor,fontSize: 12.0.sp,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
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
                                    onTap: (){

                                    },
                                    child: Container(
                                      width: 50.w,
                                      height: 30.h,
                                      alignment: Alignment.center,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Record",
                                          style: TextStyle(
                                            color: AppColor.whiteColor,fontSize: 12.0.sp,
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

  @override
  void dispose() {
    _timer.cancel(); // Cancel timer to avoid memory leaks
    super.dispose();
  }
}


