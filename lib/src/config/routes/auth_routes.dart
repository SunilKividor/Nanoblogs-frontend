part of 'router.dart';

@TypedGoRoute<OnboardingScreenRoute>(path:'/onboarding',
routes: [
  TypedGoRoute<LoginScreenRoute>(path:'login'),
  TypedGoRoute<SignUpScreenRoute>(path:'signup'),
])

class OnboardingScreenRoute extends GoRouteData {
  const OnboardingScreenRoute();

  @override
  Widget build(context,state) {
    return const OnboardingScreen(); 
  }
}

class SignUpScreenRoute extends GoRouteData {
  const SignUpScreenRoute();

   @override
  Page<void> buildPage(context, GoRouterState state) {
    return PageTranition.slideRight(context, state, const SignUpScreen());
  }
}

class LoginScreenRoute extends GoRouteData {
  const LoginScreenRoute();

   @override
  Page<void> buildPage(context, GoRouterState state) {
    return PageTranition.slideRight(context, state, const LoginScreen());
  }
}