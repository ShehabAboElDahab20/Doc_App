import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/theming/size_boxes.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/core/widgets/app_text_button.dart';
import 'package:flutter_complete_project/features/register/data/models/sign_up_request_body.dart';
import 'package:flutter_complete_project/features/register/logic/cubit/signup_cubit.dart';
import 'package:flutter_complete_project/features/register/ui/widgets/already_have_an_account.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../login/ui/widgets/terms_and_conditions.dart';
import 'widgets/email_and_password_register.dart';
import 'widgets/sign_up_bloc_listener.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final SignupCubit signupCubit;
  void initState() {
    signupCubit = context.read<SignupCubit>();
    super.initState();
  }

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
                  "Create Account",
                  style: Styles.text24Weight700maincolor,
                ),
                8.heightBox,
                const Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: Styles.text14Weight400gray,
                ),
                24.heightBox,
                Column(
                  children: [
                    const EmailAndPasswordRegister(),
                    AppTextButton(
                        buttonText: "Create Account",
                        borderRadius: 16.r,
                        onPressed: () {
                          if (signupCubit.formkey.currentState!.validate()) {
                            signupCubit.emitSignupState(SignupRequestBody(
                                name: signupCubit.namecontroller.text,
                                email: signupCubit.emailcontroller.text,
                                phone: signupCubit.phonecontroller.text,
                                password: signupCubit.passwordcontroller.text,
                                passwordConfirmation:
                                    signupCubit.passwordcontroller.text,
                                gender: 0));
                          }
                        }),
                    24.heightBox,
                    const TermsAndConditions(),
                    24.heightBox,
                    const AlreadyHaveAnAccount(),
                    SignUpBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
