import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.1,
          child: SvgPicture.asset(
            "assets/images/on_boarding_low_opacity.svg",
          ),
        ),
        Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.14, 0.4])),
            child: Image.asset("assets/images/onboarding_doctor.png")),
        Positioned(
          bottom: 10.h,
          left: 0,
          right: 0,
          child: Text("Best Doctor Appointment App",
              textAlign: TextAlign.center,
              style: Styles.text32blueweightbold.copyWith(height: 1.2.h)),
        ),
        
      ],
    );
  }
}
