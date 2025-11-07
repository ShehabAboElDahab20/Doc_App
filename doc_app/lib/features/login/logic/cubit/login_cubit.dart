import 'package:bloc/bloc.dart';
import 'package:flutter_complete_project/features/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/features/login/logic/cubit/login_state.dart';
import 'package:meta/meta.dart';

import '../../data/repos/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  void emitLoginState(LoginRequestBody loginrequestbody)async{
    emit(const LoginState.loading());
    final response = await  _loginRepo.login(loginrequestbody);
    response.when(
      success: (loginresponse) {
        emit(LoginState.success(loginresponse));
      },
      failure: (error) {
        emit(LoginState.error(error:error.apiErrorModel.message??""));
      },
    );

  }
}
