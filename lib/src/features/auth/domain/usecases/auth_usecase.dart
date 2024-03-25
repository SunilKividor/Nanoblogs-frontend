// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:nanoblogs/src/core/resources/api_response.dart';
import 'package:nanoblogs/src/core/utils/logger.dart';
import 'package:nanoblogs/src/features/auth/domain/entities/auth_entities.dart';
import 'package:nanoblogs/src/features/auth/domain/repository/auth_repo.dart';

class LoginUsecase {
  final AuthRepository authRepository;
  LoginUsecase({
    required this.authRepository,
  });
  
  Future<ApiRes<AuthResBodyEntity>> call(LoginReqBodyEntity loginReqBodyEntity) {
    logger.d("Entered login usecase");
    return authRepository.login(loginReqBodyEntity);
  } 
}

