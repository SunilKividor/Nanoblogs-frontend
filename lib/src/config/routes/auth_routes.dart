part of 'router.dart';

@TypedGoRoute<LoginScreenRoute>(path:'/login')
class LoginScreenRoute extends GoRouteData {
  const LoginScreenRoute();

  @override
  Widget build(context,state) {
    return LoginScreen();
  }
}