
import 'package:nanoblogs/src/features/auth/domain/entities/auth_entities.dart';
import 'package:nanoblogs/src/features/auth/domain/repository/auth_repo.dart';

class AuthRepositoryImple implements AuthRepository {
  @override
  Future<AuthResBodyEntity> login(LoginReqBodyEntity loginReqBodyEntity) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<AuthResBodyEntity> signup(SignUpReqBodyEntity signUpReqBodyEntity) {
    // TODO: implement signup
    throw UnimplementedError();
  }

}