import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_service.dart';
import 'package:flutter_complete_project/core/networking/dio_factory.dart';
import 'package:flutter_complete_project/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../../features/register/data/repo/sign_up_repo.dart';
import '../../features/register/logic/cubit/signup_cubit.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio and ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
//login repo and cubit
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // SignUp repo and cubit
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
