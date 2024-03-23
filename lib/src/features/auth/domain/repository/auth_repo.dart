
import 'package:nanoblogs/src/features/auth/domain/entities/auth_entities.dart';

abstract class AuthRepository {
  Future<AuthResBodyEntity> login(LoginReqBodyEntity loginReqBodyEntity);
  Future<AuthResBodyEntity> signup(SignUpReqBodyEntity signUpReqBodyEntity);
}