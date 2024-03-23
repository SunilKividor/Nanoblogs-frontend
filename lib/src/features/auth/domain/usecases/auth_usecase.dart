// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:nanoblogs/src/features/auth/domain/entities/auth_entities.dart';
import 'package:nanoblogs/src/features/auth/domain/repository/auth_repo.dart';

class LoginUsecase {
  final AuthRepository authRepository;
  LoginUsecase({
    required this.authRepository,
  });
  
  Future<AuthResBodyEntity> call(LoginReqBodyEntity loginReqBodyEntity) {
    return authRepository.login(loginReqBodyEntity);
  } 
}

