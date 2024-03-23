// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nanoblogs/src/features/auth/domain/entities/auth_entities.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@freezed
class LoginReqBodyModel extends LoginReqBodyEntity with _$LoginReqBodyModel{
  factory LoginReqBodyModel({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
  }) = _LoginReqBodyModel;

  factory LoginReqBodyModel.fromJson(Map<String, dynamic> json) =>
      _$LoginReqBodyModelFromJson(json);
}

//do signup
@freezed
class SignupReqBodyModel extends SignUpReqBodyEntity with _$SignupReqBodyModel {
  factory SignupReqBodyModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'category') required List<String> category,

  }) =_SignupReqBodyModel;

  factory SignupReqBodyModel.fromJson(Map<String, dynamic> json) =>
    _$SignupReqBodyModelFromJson(json);
}

@freezed
class AuthResBodyModel extends AuthResBodyEntity with _$AuthResBodyModel {
  factory AuthResBodyModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    }) = _AuthResBodyModel;

      factory AuthResBodyModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResBodyModelFromJson(json);
}