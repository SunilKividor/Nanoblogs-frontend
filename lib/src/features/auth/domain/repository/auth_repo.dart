
import 'package:nanoblogs/src/core/resources/api_response.dart';
import 'package:nanoblogs/src/features/auth/domain/entities/auth_entities.dart';

abstract class AuthRepository {
  Future<ApiRes<AuthResBodyEntity>> login(LoginReqBodyEntity loginReqBodyEntity);
  Future<ApiRes<AuthResBodyEntity>> signup(SignUpReqBodyEntity signUpReqBodyEntity);
}