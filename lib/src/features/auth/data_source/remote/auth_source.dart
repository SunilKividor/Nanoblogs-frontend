
import 'package:dio/dio.dart';
import 'package:nanoblogs/src/features/auth/data_source/models/auth_models.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_source.g.dart';

@RestApi()
abstract class AuthSource {
  factory AuthSource(Dio dio) = _AuthSource;

  @POST('auth/login')
  Future<HttpResponse<AuthResBodyModel>> login({
    @Body() required LoginReqBodyModel body,
  });
}