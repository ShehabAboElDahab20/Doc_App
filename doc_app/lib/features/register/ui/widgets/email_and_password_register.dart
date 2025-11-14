import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/theming/size_boxes.dart';
import 'package:flutter_complete_project/core/widgets/app_text_form_field.dart';
import 'package:flutter_complete_project/features/register/logic/cubit/signup_cubit.dart';

class EmailAndPasswordRegister extends StatefulWidget {
  const EmailAndPasswordRegister({super.key});

  @override
  State<EmailAndPasswordRegister> createState() =>
      _EmailAndPasswordRegisterState();
}

class _EmailAndPasswordRegisterState extends State<EmailAndPasswordRegister> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formkey,
      child: Column(
        children: [
          AppTextFormField(
              controller: context.read<SignupCubit>().namecontroller,
              hintText: "Name",
              validator: (String? value) {}),
          24.heightBox,
          AppTextFormField(
              controller: context.read<SignupCubit>().phonecontroller,
              hintText: "Phone",
              keyboardType: TextInputType.number,
              validator: (String? value) {}),
          24.heightBox,
          AppTextFormField(
              controller: context.read<SignupCubit>().emailcontroller,
              hintText: "Email",
              validator: (String? value) {}),
          24.heightBox,
          AppTextFormField(
            controller: context.read<SignupCubit>().passwordcontroller,
            hintText: "Password",
            isObscureText: obscureText,
            suffixIcon: GestureDetector(
                onTap: () => setState(() {
                      obscureText = !obscureText;
                    }),
                child: Icon(obscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined)),
            validator: (String? value) {},
          ),
          24.heightBox,
          AppTextFormField(
            controller: context.read<SignupCubit>().passwordcontroller,
            hintText: "Password",
            isObscureText: obscureText,
            suffixIcon: GestureDetector(
                onTap: () => setState(() {
                      obscureText = !obscureText;
                    }),
                child: Icon(obscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined)),
            validator: (String? value) {},
          ),
          24.heightBox,
        ],
      ),
    );
  }
}
