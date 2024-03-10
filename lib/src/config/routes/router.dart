import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nanoblogs/src/features/auth/presentation/screens/login_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'package:go_router/go_router.dart';

part 'router.g.dart';
part 'auth_routes.dart';

@Riverpod(keepAlive:true)
GoRouter router(RouterRef ref){
  return GoRouter(
    initialLocation: LoginScreenRoute().location,
    debugLogDiagnostics: true,
    routes: $appRoutes,
    errorBuilder: (ctx,state) => Text('Error'),
    redirect: (context, state) {
      return;
    },
  );
}