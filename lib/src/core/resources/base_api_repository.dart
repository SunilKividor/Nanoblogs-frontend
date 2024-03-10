

import 'dart:io' show HttpStatus;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:nanoblogs/src/core/resources/api_response.dart';
import 'package:retrofit/retrofit.dart';

mixin BaseApiRepository {
  @protected
  Future<ApiRes<T>> getApiResponse<T>({
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final httpResponse = await request();
      final status = httpResponse.response.statusCode ?? 400;
      if (status < HttpStatus.badRequest) {
        return Right(httpResponse.data);
      } else {
        final error = httpResponse.response.data;
        return Left(
          DioException(
            error: error['error'] ?? httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (error) {
      return Left(error);
    }
  }
}