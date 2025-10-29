import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/core/theming/size_boxes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../core/theming/styles.dart';
import '../../core/widgets/app_text_button.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
          style: Styles.text10grayweight400,
          textAlign: TextAlign.center,
        ),
        16.heightBox,
        AppTextButton(
          buttonText: "Get Started",
          onPressed: () {
            context.push(Routes.loginScreen);
          },
          borderRadius: 16.r,
          buttonWidth: 311.w,
          buttonHeight: 52.h,
        )
      ],
    );
  }
}
