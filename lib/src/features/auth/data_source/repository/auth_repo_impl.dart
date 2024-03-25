import 'package:nanoblogs/src/core/resources/api_response.dart';
import 'package:nanoblogs/src/core/resources/base_api_repository.dart';
import 'package:nanoblogs/src/core/utils/logger.dart';
import 'package:nanoblogs/src/features/auth/data_source/models/auth_models.dart';
import 'package:nanoblogs/src/features/auth/data_source/remote/auth_source.dart';
import 'package:nanoblogs/src/features/auth/domain/entities/auth_entities.dart';
import 'package:nanoblogs/src/features/auth/domain/repository/auth_repo.dart';

class AuthRepositoryImpl with BaseApiRepository implements AuthRepository {
  final AuthSource source;

  AuthRepositoryImpl({required this.source});
  @override
  Future<ApiRes<AuthResBodyEntity>> login(
      LoginReqBodyEntity loginReqBodyEntity) async {
    return getApiResponse<AuthResBodyModel>(request: () {
      logger.d("Entered login repo");
      return source.login(
        body: LoginReqBodyModel(
            username: loginReqBodyEntity.username,
            password: loginReqBodyEntity.password),
      );
    });
  }

  @override
  Future<ApiRes<AuthResBodyEntity>> signup(
      SignUpReqBodyEntity signUpReqBodyEntity) {
    // TODO: implement signup
    throw UnimplementedError();
  }
}
