import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/features/register/logic/cubit/signup_cubit.dart';
import 'package:flutter_complete_project/features/register/logic/cubit/signup_state.dart';
import 'package:go_router/go_router.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () => CircularProgressIndicator,
          success: (signupresponsesuccess) {
            context.pop();
            context.push(Routes.homeScreen);
          },
          error: (error) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
              ),
            );
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
