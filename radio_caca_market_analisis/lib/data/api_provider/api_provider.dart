import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:radio_caca_market_analisis/infrastructure/app_error.dart';
import 'dart:async';

import 'package:radio_caca_market_analisis/infrastructure/infrastructure.dart';

class ApiProvider {
  ApiProvider(this.context);
  final AppContext context;
  late Dio dio;
  void initialize() {
    dio = Dio();
    dio.options.baseUrl = context.connection!.apiUrl;
    dio.options.responseType = ResponseType.json;
    dio.options.connectTimeout = 30 * 1000;
    dio.options.receiveTimeout = 30 * 1000;

    var transformer = dio.transformer as DefaultTransformer;
    transformer.jsonDecodeCallback = jsonDecodeAsync;
    if (!kReleaseMode) {
      dio.interceptors.add(LogInterceptor());
    }
  }

  static dynamic _jsonDecodeCallback(String data) => json.decode(data);
  static Future<dynamic> jsonDecodeAsync(String data) {
    return compute<String, dynamic>(_jsonDecodeCallback, data);
  }
}

class ApiException extends AppException {
  ApiException({String? code, String? message})
      : super(code: code!, message: message!);

  factory ApiException.fromResponse(Response<dynamic>? response) {
    return ApiException(message: AppString.unExpectedErrorOccurred);
  }

  //return api exception for known exceptions
  //else return appError with original ex
  static dynamic fromError(dynamic e) {
    if (e is ApiException) {
      return e;
    }

    if (e is DioError) {
      DioError dioError = e;
      switch (dioError.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.receiveTimeout:
        case DioErrorType.sendTimeout:
          return ApiException(message: AppString.apiConnectionTimeout);
        case DioErrorType.cancel:
          return ApiException(message: AppString.apiRequestCanceled);

        case DioErrorType.response:
          return ApiException.fromResponse(dioError.response);
        case DioErrorType.other:
          if (dioError.error is SocketException) {
            return ApiException(
                message: AppString.connectionCouldNotEstablishWithTheServer);
          } else {
            return ApiException(message: AppString.unExpectedErrorOccurred);
          }
      }
    }

    return ApiException(message: AppString.unExpectedErrorOccurred);
  }
}
