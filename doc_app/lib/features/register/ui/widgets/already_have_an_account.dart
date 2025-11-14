import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: "Already have an account? ",
      style: Styles.text14Weight400gray.copyWith(color: Colors.black87),
      children: [
        TextSpan(
          text: "Login",
          style: Styles.text12Weight400maincolor,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.push(Routes.loginScreen);
            },
        ),
      ],
    ));
  }
}
