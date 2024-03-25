import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:nanoblogs/src/core/constants/env.dart';
import 'package:nanoblogs/src/core/utils/logger.dart';
import 'package:nanoblogs/src/features/common/provider/local_db.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_interceptor.g.dart';

@Riverpod(keepAlive:true)
Dio dio(DioRef ref,{bool useIsolate = false}) {
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
          logger.d("error : ${e.message} -- ${e.error} -- ${e.response}");
          if(e.response?.statusCode == HttpStatus.unauthorized){
            //update the access token by refreshing 
          }
          return handler.next(e);
        }
      )
    ]);
      if (useIsolate) {
    dio.transformer = (BackgroundTransformer()..jsonDecodeCallback = parseJson);
  }
    return dio;
}

Future<Map<String, dynamic>> parseJson(String text) {
  return compute(_parseAndDecode, text);
}

Map<String, dynamic> _parseAndDecode(String response) {
  return jsonDecode(response) as Map<String, dynamic>;
}
