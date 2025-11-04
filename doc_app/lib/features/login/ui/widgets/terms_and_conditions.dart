import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/size_boxes.dart';

import '../../../../core/theming/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "By logging, you agree to our",
              style: Styles.text14Weight400gray,
              children: [
                TextSpan(
                  text: " Terms & Conditions",
                  style: Styles.text14Weight400gray.copyWith(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: " and ",
                  style: Styles.text14Weight400gray.copyWith(height: 1.5),
                ),
                TextSpan(
                  text: " PrivacyPolicy",
                  style: Styles.text14Weight400gray.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
