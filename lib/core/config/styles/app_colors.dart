import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColor {
  static const appMainColor = Color(0xFFE5F7FF);
  static const whiteColor = Color(0xFFFFFFFF);
  static const blackTextColor = Color(0xFF1E1E1E);
  static const greyColor = Color(0xFFBEC3C7);
  static const darkGreyColor = Color(0xFF868889);
  static const greyTextColor = Color(0xFF474D50);
  static const blueColor = Color(0xFF1632C5);
  static const headingColor = Color(0xFF141356);
  static const containerColor = Color(0xFFDDDDE0);
  static const lightBlueColor = Color(0xFFB7E4F8);

  static const buttonColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF141356), Color(0xFF0095DA)],
    stops: [0.0, 1.0],
  );
}

