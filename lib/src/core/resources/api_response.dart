

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

typedef ApiRes<T> = Either<DioException, T>;