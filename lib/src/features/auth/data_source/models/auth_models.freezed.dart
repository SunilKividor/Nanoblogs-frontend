// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginReqBodyModel _$LoginReqBodyModelFromJson(Map<String, dynamic> json) {
  return _LoginReqBodyModel.fromJson(json);
}

/// @nodoc
mixin _$LoginReqBodyModel {
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginReqBodyModelCopyWith<LoginReqBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginReqBodyModelCopyWith<$Res> {
  factory $LoginReqBodyModelCopyWith(
          LoginReqBodyModel value, $Res Function(LoginReqBodyModel) then) =
      _$LoginReqBodyModelCopyWithImpl<$Res, LoginReqBodyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class _$LoginReqBodyModelCopyWithImpl<$Res, $Val extends LoginReqBodyModel>
    implements $LoginReqBodyModelCopyWith<$Res> {
  _$LoginReqBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginReqBodyModelImplCopyWith<$Res>
    implements $LoginReqBodyModelCopyWith<$Res> {
  factory _$$LoginReqBodyModelImplCopyWith(_$LoginReqBodyModelImpl value,
          $Res Function(_$LoginReqBodyModelImpl) then) =
      __$$LoginReqBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password});
}

/// @nodoc
class __$$LoginReqBodyModelImplCopyWithImpl<$Res>
    extends _$LoginReqBodyModelCopyWithImpl<$Res, _$LoginReqBodyModelImpl>
    implements _$$LoginReqBodyModelImplCopyWith<$Res> {
  __$$LoginReqBodyModelImplCopyWithImpl(_$LoginReqBodyModelImpl _value,
      $Res Function(_$LoginReqBodyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginReqBodyModelImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginReqBodyModelImpl implements _LoginReqBodyModel {
  _$LoginReqBodyModelImpl(
      {@JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'password') required this.password});

  factory _$LoginReqBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginReqBodyModelImplFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;

  @override
  String toString() {
    return 'LoginReqBodyModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginReqBodyModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginReqBodyModelImplCopyWith<_$LoginReqBodyModelImpl> get copyWith =>
      __$$LoginReqBodyModelImplCopyWithImpl<_$LoginReqBodyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginReqBodyModelImplToJson(
      this,
    );
  }
}

abstract class _LoginReqBodyModel implements LoginReqBodyModel {
  factory _LoginReqBodyModel(
          {@JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'password') required final String password}) =
      _$LoginReqBodyModelImpl;

  factory _LoginReqBodyModel.fromJson(Map<String, dynamic> json) =
      _$LoginReqBodyModelImpl.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LoginReqBodyModelImplCopyWith<_$LoginReqBodyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignupReqBodyModel _$SignupReqBodyModelFromJson(Map<String, dynamic> json) {
  return _SignupReqBodyModel.fromJson(json);
}

/// @nodoc
mixin _$SignupReqBodyModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  List<String> get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupReqBodyModelCopyWith<SignupReqBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupReqBodyModelCopyWith<$Res> {
  factory $SignupReqBodyModelCopyWith(
          SignupReqBodyModel value, $Res Function(SignupReqBodyModel) then) =
      _$SignupReqBodyModelCopyWithImpl<$Res, SignupReqBodyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'category') List<String> category});
}

/// @nodoc
class _$SignupReqBodyModelCopyWithImpl<$Res, $Val extends SignupReqBodyModel>
    implements $SignupReqBodyModelCopyWith<$Res> {
  _$SignupReqBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? password = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupReqBodyModelImplCopyWith<$Res>
    implements $SignupReqBodyModelCopyWith<$Res> {
  factory _$$SignupReqBodyModelImplCopyWith(_$SignupReqBodyModelImpl value,
          $Res Function(_$SignupReqBodyModelImpl) then) =
      __$$SignupReqBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'category') List<String> category});
}

/// @nodoc
class __$$SignupReqBodyModelImplCopyWithImpl<$Res>
    extends _$SignupReqBodyModelCopyWithImpl<$Res, _$SignupReqBodyModelImpl>
    implements _$$SignupReqBodyModelImplCopyWith<$Res> {
  __$$SignupReqBodyModelImplCopyWithImpl(_$SignupReqBodyModelImpl _value,
      $Res Function(_$SignupReqBodyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? password = null,
    Object? category = null,
  }) {
    return _then(_$SignupReqBodyModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupReqBodyModelImpl implements _SignupReqBodyModel {
  _$SignupReqBodyModelImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'username') required this.username,
      @JsonKey(name: 'password') required this.password,
      @JsonKey(name: 'category') required final List<String> category})
      : _category = category;

  factory _$SignupReqBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupReqBodyModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'password')
  final String password;
  final List<String> _category;
  @override
  @JsonKey(name: 'category')
  List<String> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'SignupReqBodyModel(name: $name, username: $username, password: $password, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupReqBodyModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, username, password,
      const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupReqBodyModelImplCopyWith<_$SignupReqBodyModelImpl> get copyWith =>
      __$$SignupReqBodyModelImplCopyWithImpl<_$SignupReqBodyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupReqBodyModelImplToJson(
      this,
    );
  }
}

abstract class _SignupReqBodyModel implements SignupReqBodyModel {
  factory _SignupReqBodyModel(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'username') required final String username,
          @JsonKey(name: 'password') required final String password,
          @JsonKey(name: 'category') required final List<String> category}) =
      _$SignupReqBodyModelImpl;

  factory _SignupReqBodyModel.fromJson(Map<String, dynamic> json) =
      _$SignupReqBodyModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(name: 'category')
  List<String> get category;
  @override
  @JsonKey(ignore: true)
  _$$SignupReqBodyModelImplCopyWith<_$SignupReqBodyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthResBodyModel _$AuthResBodyModelFromJson(Map<String, dynamic> json) {
  return _AuthResBodyModel.fromJson(json);
}

/// @nodoc
mixin _$AuthResBodyModel {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResBodyModelCopyWith<AuthResBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResBodyModelCopyWith<$Res> {
  factory $AuthResBodyModelCopyWith(
          AuthResBodyModel value, $Res Function(AuthResBodyModel) then) =
      _$AuthResBodyModelCopyWithImpl<$Res, AuthResBodyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$AuthResBodyModelCopyWithImpl<$Res, $Val extends AuthResBodyModel>
    implements $AuthResBodyModelCopyWith<$Res> {
  _$AuthResBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthResBodyModelImplCopyWith<$Res>
    implements $AuthResBodyModelCopyWith<$Res> {
  factory _$$AuthResBodyModelImplCopyWith(_$AuthResBodyModelImpl value,
          $Res Function(_$AuthResBodyModelImpl) then) =
      __$$AuthResBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$AuthResBodyModelImplCopyWithImpl<$Res>
    extends _$AuthResBodyModelCopyWithImpl<$Res, _$AuthResBodyModelImpl>
    implements _$$AuthResBodyModelImplCopyWith<$Res> {
  __$$AuthResBodyModelImplCopyWithImpl(_$AuthResBodyModelImpl _value,
      $Res Function(_$AuthResBodyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$AuthResBodyModelImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResBodyModelImpl implements _AuthResBodyModel {
  _$AuthResBodyModelImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$AuthResBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResBodyModelImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'AuthResBodyModel(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResBodyModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResBodyModelImplCopyWith<_$AuthResBodyModelImpl> get copyWith =>
      __$$AuthResBodyModelImplCopyWithImpl<_$AuthResBodyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResBodyModelImplToJson(
      this,
    );
  }
}

abstract class _AuthResBodyModel implements AuthResBodyModel {
  factory _AuthResBodyModel(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$AuthResBodyModelImpl;

  factory _AuthResBodyModel.fromJson(Map<String, dynamic> json) =
      _$AuthResBodyModelImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$AuthResBodyModelImplCopyWith<_$AuthResBodyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
