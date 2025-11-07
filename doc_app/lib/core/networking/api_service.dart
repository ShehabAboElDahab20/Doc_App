import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_constant.dart';
import 'package:flutter_complete_project/features/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/features/login/data/models/login_response_body.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstant.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstant.login)
  Future<LoginResponseBody> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
