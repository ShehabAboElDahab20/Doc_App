import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/size_boxes.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/Group.svg"),
        8.widthBox,
        Text(
          'Docdoc',
          style: Styles.text24blackweightbold,
        )
      ],
    );
  }
}
