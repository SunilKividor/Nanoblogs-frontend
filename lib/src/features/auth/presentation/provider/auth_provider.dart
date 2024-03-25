import 'package:nanoblogs/src/core/provider/dio_interceptor.dart';
import 'package:nanoblogs/src/core/utils/logger.dart';
import 'package:nanoblogs/src/features/auth/data_source/remote/auth_source.dart';
import 'package:nanoblogs/src/features/auth/data_source/repository/auth_repo_impl.dart';
import 'package:nanoblogs/src/features/auth/domain/entities/auth_entities.dart';
import 'package:nanoblogs/src/features/auth/domain/repository/auth_repo.dart';
import 'package:nanoblogs/src/features/auth/domain/usecases/auth_usecase.dart';
import 'package:nanoblogs/src/features/common/provider/local_db.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger/logger.dart';

part 'auth_provider.g.dart';

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final dio = ref.read(dioProvider());
  final authSource = AuthSource(dio);
  return AuthRepositoryImpl(source: authSource);
}

@riverpod
LoginUsecase loginUsecase(LoginUsecaseRef ref){
  final AuthRepository authRepository = ref.read(authRepositoryProvider);
  return LoginUsecase(authRepository: authRepository);
}

//main providers to use

@riverpod
class Auth extends _$Auth {
  @override
  void build(){}

  Future<bool> login(LoginReqBodyEntity loginReqBodyEntity) async {
    logger.d("Entered Auth Login");
    final res = await ref.read(loginUsecaseProvider).call(loginReqBodyEntity);
    return res.fold((l) => false, (r) async{
      await ref.read(credentialStorageProvider).setAccessToken(r.accessToken);
      await ref.read(credentialStorageProvider).setRefreshToken(r.refreshToken);
      final access = await ref.read(credentialStorageProvider).getAccessToken;
      final refresh = await ref.read(credentialStorageProvider).getRefreshToken;
      logger.d("accessToken : $access");
      logger.d("refreshToken : $refresh");
      return true;
    });
  }
}