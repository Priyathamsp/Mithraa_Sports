import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mithraa_sports/core/utils/shared/components/widgets/line_graph_widget.dart';
import 'package:mithraa_sports/features/About_us/view/about_us.dart';
import 'package:mithraa_sports/features/Analytics/view/analytics.dart';
import 'package:mithraa_sports/features/Profile/view/profile_screen.dart';
import 'package:mithraa_sports/features/forget_password/view/forget_password/change_password.dart';
import 'package:mithraa_sports/features/forget_password/view/forget_password/forget_password.dart';
import 'package:mithraa_sports/features/forget_password/view/forget_password/otp_screen.dart';
import 'package:mithraa_sports/features/history/view/history.dart';
import 'package:mithraa_sports/features/home_screen/view/home_screen.dart';
import 'package:mithraa_sports/features/learn/view/learn_screen.dart';
import 'package:mithraa_sports/features/login/view/login_screen/login_screen.dart';
import 'package:mithraa_sports/features/login/view/register/registration.dart';
import 'package:mithraa_sports/features/menu/view/drawer.dart';
import 'package:mithraa_sports/features/notification/view/notifications.dart';
import 'package:mithraa_sports/features/practice/view/practice_screen.dart';
import 'package:mithraa_sports/features/practice/view/practice_screen2.dart';
import 'package:mithraa_sports/features/records/view/isda_records.dart';
import 'package:mithraa_sports/features/records/view/records.dart';
import 'package:mithraa_sports/features/splash_screen/view/splash_screen.dart';
import 'package:mithraa_sports/features/tournament/view/tournament_screen.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return ScreenUtilInit(
      designSize: const Size(280, 650),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(home: SplashScreen(),
      ),
    );
  }
}



