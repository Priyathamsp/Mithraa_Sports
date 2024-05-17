import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/config/styles/app_colors.dart';
import '../../../core/utils/shared/components/widgets/bottom_navigation_bar.dart';
import '../../home_screen/view/home_screen.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                            "About Us",
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
                InkWell(
                  onTap: (){
                    Get.back();

                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text("Terms & Conditions", style: TextStyle(
                        color: AppColor.blackTextColor,
                      ),),
                      trailing: Icon(Icons.arrow_forward, color: AppColor.blackTextColor,),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: (){
                    Get.back();

                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text("Privacy Policy", style: TextStyle(
                        color: AppColor.blackTextColor,
                      ),),
                      trailing: Icon(Icons.arrow_forward, color: AppColor.blackTextColor,),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: (){
                    Get.back();

                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text("Customer Care Details", style: TextStyle(
                        color: AppColor.blackTextColor,
                      ),),
                      trailing: Icon(Icons.arrow_forward, color: AppColor.blackTextColor,),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: (){
                    Get.back();

                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text("Company Details", style: TextStyle(
                        color: AppColor.blackTextColor,
                      ),),
                      trailing: Icon(Icons.arrow_forward, color: AppColor.blackTextColor,),
                    ),
                  ),
                )
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
