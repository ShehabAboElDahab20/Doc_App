import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: "Don't have an account? ",
      style: Styles.text14Weight400gray.copyWith(color: Colors.black87),
      children: [
        TextSpan(
          text: "Sign Up",
          style: Styles.text12Weight400maincolor,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.push(Routes.registerScreen);
            },
        ),
      ],
    ));
  }
}
