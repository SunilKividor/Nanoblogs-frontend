import 'dart:io';

import 'package:dio/dio.dart';
import 'package:nanoblogs/src/core/constants/env.dart';
import 'package:nanoblogs/src/features/common/provider/local_db.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_interceptor.g.dart';

@Riverpod(keepAlive:true)
Dio dio(DioRef ref) {
  final dio = Dio()
    ..options.baseUrl = Env.endpoint
    ..options.contentType = 'application/json'
    ..interceptors.addAll([
      InterceptorsWrapper(
        onRequest: (options,handler) async {
          final accessToken = await ref.read(credentialStorageProvider).getAccessToken;
          options.headers['Authorization'] = 'Bearer $accessToken';
          return handler.next(options);
        },
        onError: (DioException e, handler) {
          if(e.response?.statusCode == HttpStatus.unauthorized){
            //update the access token by refreshing 
          }
          return handler.next(e);
        }
      )
    ]);
    return dio;
}
