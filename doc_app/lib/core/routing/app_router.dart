import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/depndency_injection.dart';
import 'package:flutter_complete_project/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_complete_project/features/login/ui/login_screen.dart';
import 'package:flutter_complete_project/features/onboarding/onboarding_screen.dart'
    show OnboardingScreen;
import 'package:go_router/go_router.dart';

import 'routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.onBoardingScreen,
    routes: [
      GoRoute(
        path: Routes.onBoardingScreen,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: Routes.loginScreen,
        builder: (context, state) => BlocProvider(
          create: (_) => LoginCubit(getIt()),
          child: const LoginScreen(),
        ),
      ),
      // GoRoute(
      //   path: '/login',
      //   name: 'login',
      //   builder: (context, state) => const LoginScreen(),
      // ),
    ],
  );
}
