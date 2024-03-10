import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName : 'endpoint')
  static const String endpoint = _Env.endpoint;
}