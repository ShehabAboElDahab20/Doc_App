import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/theming/app_colors.dart';

class Styles {
  static TextStyle text24blackweightbold = const TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle text32blueweightbold = const TextStyle(
    fontSize: 32,
    color: AppColors.mainBlue,
    fontWeight: FontWeight.bold,
  );
  static TextStyle text10grayweight400 = const TextStyle(
    fontSize: 10,
    color: AppColors.gray,
    fontWeight: FontWeight.w400,
  );
  static TextStyle text16Weight600White = const TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
}
