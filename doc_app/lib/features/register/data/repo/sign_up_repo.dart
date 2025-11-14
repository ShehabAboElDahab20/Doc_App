import 'package:flutter_complete_project/core/networking/api_result.dart';
import 'package:flutter_complete_project/core/networking/api_service.dart';
import 'package:flutter_complete_project/features/register/data/models/sign_up_request_body.dart';
import 'package:flutter_complete_project/features/register/data/models/sign_up_response.dart';

import '../../../../core/networking/api_error_handler.dart' show ErrorHandler;

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.register(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
