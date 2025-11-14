import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/features/register/data/models/sign_up_request_body.dart';
import 'package:flutter_complete_project/features/register/data/repo/sign_up_repo.dart';
import 'package:flutter_complete_project/features/register/logic/cubit/signup_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo _signUpRepo;
  SignupCubit(this._signUpRepo) : super(const SignupState.initial());

  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void emitSignupState(SignupRequestBody signuprequest) async {
    emit(const SignupState.loading());
    final result = await _signUpRepo.signup(signuprequest);

    result.when(success: (signupresponse) {
      emit(SignupState.success(signupresponse));
    }, failure: (error) {
      emit(SignupState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
