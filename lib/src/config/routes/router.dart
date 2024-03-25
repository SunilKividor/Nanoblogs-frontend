import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_page_transition/go_router_page_transition.dart';
import 'package:nanoblogs/src/features/auth/presentation/screens/authentication/login_screen.dart';
import 'package:nanoblogs/src/features/auth/presentation/screens/authentication/sign_up.dart';
import 'package:nanoblogs/src/features/auth/presentation/screens/onboarding/onboarding.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:nanoblogs/src/config/routes/router.dart';
import 'package:nanoblogs/src/features/home/presentation/screens/home_screen.dart';

export 'package:go_router/go_router.dart';

part 'router.g.dart';
part 'auth_routes.dart';
part 'home_routes.dart';

@Riverpod(keepAlive:true)
GoRouter router(RouterRef ref){
  return GoRouter(
    initialLocation: OnboardingScreenRoute().location,
    debugLogDiagnostics: true,
    routes: $appRoutes,
    errorBuilder: (ctx,state) => Text('Error'),
    redirect: (context, state) {
      return;
    },
  );
}