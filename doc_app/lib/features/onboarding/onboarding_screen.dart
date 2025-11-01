import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/size_boxes.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/features/onboarding/doc_image_and_text.dart';
import 'package:flutter_complete_project/features/onboarding/doc_logo_and_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'get_started_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DocLogoAndName(),
                30.heightBox,
                const DocImageAndText(),
                30.heightBox,
                const GetStartedButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
