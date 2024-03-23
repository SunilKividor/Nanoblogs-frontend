// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginReqBodyModelImpl _$$LoginReqBodyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginReqBodyModelImpl(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$LoginReqBodyModelImplToJson(
        _$LoginReqBodyModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$SignupReqBodyModelImpl _$$SignupReqBodyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignupReqBodyModelImpl(
      name: json['name'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      category:
          (json['category'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SignupReqBodyModelImplToJson(
        _$SignupReqBodyModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'password': instance.password,
      'category': instance.category,
    };

_$AuthResBodyModelImpl _$$AuthResBodyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthResBodyModelImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$AuthResBodyModelImplToJson(
        _$AuthResBodyModelImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
