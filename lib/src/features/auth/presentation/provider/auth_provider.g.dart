// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authRepositoryHash() => r'26f9621c33379560798e9e2f1143ee9b48e58cdd';

/// See also [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider = AutoDisposeProvider<AuthRepository>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepositoryRef = AutoDisposeProviderRef<AuthRepository>;
String _$loginUsecaseHash() => r'1292326f23a9e1df53ac9ffffba3c8c412341f11';

/// See also [loginUsecase].
@ProviderFor(loginUsecase)
final loginUsecaseProvider = AutoDisposeProvider<LoginUsecase>.internal(
  loginUsecase,
  name: r'loginUsecaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginUsecaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LoginUsecaseRef = AutoDisposeProviderRef<LoginUsecase>;
String _$authHash() => r'f94f0463c1b2db9d3ae47ecd2d31946d946753ce';

/// See also [Auth].
@ProviderFor(Auth)
final authProvider = AutoDisposeNotifierProvider<Auth, void>.internal(
  Auth.new,
  name: r'authProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Auth = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
