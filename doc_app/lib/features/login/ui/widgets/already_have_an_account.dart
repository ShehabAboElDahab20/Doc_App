import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: "Already have an account? ",
      style: Styles.text14Weight400gray.copyWith(color: Colors.black87),
      children: const [
        TextSpan(
          text: "Sign Up",
          style: Styles.text12Weight400maincolor,
        ),
      ],
    ));
  }
}
