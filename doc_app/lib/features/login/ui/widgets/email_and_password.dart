import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/theming/size_boxes.dart';

import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

bool isObscureText = true;

class _EmailAndPasswordState extends State<EmailAndPassword> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formkey,
        child: Column(
          children: [
            AppTextFormField(
                controller: context.read<LoginCubit>().emailcontroller,
                hintText: "Email",
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  }
                }),
            16.heightBox,
            AppTextFormField(
                controller: context.read<LoginCubit>().passwordcontroller,
                isObscureText: isObscureText,
                hintText: "Password",
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  }
                },
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText;
                    });
                  },
                  child: Icon(
                    isObscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                )),
            16.heightBox
          ],
        ));
  }
}
