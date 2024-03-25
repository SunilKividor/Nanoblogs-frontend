part of 'router.dart';

@TypedGoRoute<HomeScreenRoute>(path:'/onboarding')
class HomeScreenRoute extends GoRouteData {
  const HomeScreenRoute();

  @override
  Widget build(context,state) {
    return const HomeScreen(); 
  }
}