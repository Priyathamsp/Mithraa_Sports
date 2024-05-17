import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/config/styles/app_colors.dart';
import '../../home_screen/view/home_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                            "Notification",
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
                StreamBuilder(
                    stream: Stream.empty(),
                    //StreamBuilder<RxList<Notifications>>(
                    //stream: notificationController.fetchNotification(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CupertinoActivityIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text('Error fetching data: ${snapshot.error}'),
                        );
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                        return Center(
                          child: Text('No data available.'),
                        );
                      } else {
                        final dataList = snapshot.data!;
                        return SizedBox(
                          height: Get.height.h,
                          child: ListView.builder(
                            itemCount: dataList.length,
                            itemBuilder: (context, index) {
                              final data = dataList[index];
                              return Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  width: Get.width * 0.7.w,
                                  height: 80.h,
                                  decoration: BoxDecoration(
                                    color: AppColor.greyColor,
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              data.crNotifiTime ?? '',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Inter-Regular'),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              data.crNotifiId ?? '',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12.sp,
                                                  fontFamily: 'Inter-Regular'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          data.msgForCr ?? '',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.sp,
                                              fontFamily: 'Inter-Regular'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
