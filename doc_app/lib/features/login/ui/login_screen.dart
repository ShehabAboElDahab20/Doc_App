import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/theming/size_boxes.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/core/widgets/app_text_form_field.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/already_have_an_account.dart';
import 'package:flutter_complete_project/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.0.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome Back",
                  style: Styles.text24Weight700maincolor,
                ),
                8.heightBox,
                const Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: Styles.text14Weight400gray,
                ),
                24.heightBox,
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      AppTextFormField(
                          hintText: "Email", validator: (String? value) {}),
                      16.heightBox,
                      AppTextFormField(
                          isObscureText: isObscureText,
                          hintText: "Password",
                          validator: (String? value) {},
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(
                              isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          )),
                      16.heightBox,
                      const Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Forgot Password?",
                          style: Styles.text12Weight400maincolor,
                        ),
                      ),
                      24.heightBox,
                      AppTextButton(
                          buttonWidth: 327.w,
                          buttonHeight: 52.h,
                          borderRadius: 16.r,
                          buttonText: "Login",
                          onPressed: () {}),
                      24.heightBox,
                      const TermsAndConditions(),
                      24.heightBox,
                      const AlreadyHaveAnAccount()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
