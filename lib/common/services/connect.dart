import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:star_game_flutter/common/common.dart';

class ConnentService extends GetConnect {
  static ConnentService get to => Get.find();

  @override
  void onInit() {
    // httpClient.baseUrl = 'http://124.220.92.185:8080';
    // httpClient.addRequestModifier((request) {
    //   request.headers['token'] = 'token';
    //   return request;
    // });

    httpClient.baseUrl = baseUrl;
    httpClient.defaultContentType = "application/json; charset=utf-8";
    httpClient.timeout = const Duration(seconds: 10);
    httpClient.addResponseModifier(responseInterceptor);
    httpClient.addRequestModifier(requestInterceptor);

    super.onInit();
  }

  FutureOr<dynamic> responseInterceptor(Request request, Response response) {
    // EasyLoading.dismiss();
    switch (response.statusCode) {
      case 200:
        return response;
      case 201:
        return response;
      case 400:
        // Toaster.showToast(message: response.body.toString());
        throw BadRequestException(response.body.toString());
      case 401:

        // Toaster.showToast(message: response.body.toString());
        throw BadRequestException(response.body.toString());
      case 403:

        // Toaster.showToast(message: response.body.toString());
        throw UnauthorizedException(response.body.toString());
      case 500:

        // Toaster.showToast(message: response.body.toString());
        throw InternalServerException(response.body.toString());
      default:

        // Toaster.showToast(message: "Unexpected error occurred, try again...");
        throw FetchDataException(
            'Unexpected error occurred : ${response.statusCode}');
    }
  }

  FutureOr<Request> requestInterceptor(Request request) async {
    Map<String, String> headers = {"x-rapidapi-key": apiKey};
    request.headers.addAll(headers);
    // EasyLoading.show(status: "로드중...");
    return request;
  }

  Future<ResponseModel> getCases(
    String url, {
    Map<String, String>? headers,
    String? contentType,
    Map<String, dynamic>? query,
    Function(dynamic)? decoder,
    Function()? errorCallBack,
  }) async {
    Response response = await get(
      url,
      headers: headers,
      contentType: contentType,
      query: query,
      decoder: decoder,
    );
    if (response.statusCode == 200) {
      return ResponseModel.fromJson(json.decode(response.bodyString!));
    } else {
      if (errorCallBack != null) errorCallBack();
      return ResponseModel.err();
    }
  }

  Future<ResponseModel> postCases(
    String url,
    dynamic body, {
    String? contentType,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Function(dynamic)? decoder,
    dynamic Function(double)? uploadProgress,
    Function()? errorCallBack,
  }) async {
    Response response = await post(
      url,
      body,
      headers: headers,
      query: query,
      decoder: decoder,
      uploadProgress: uploadProgress,
    );
    if (response.statusCode == 200) {
      return ResponseModel.fromJson(json.decode(response.bodyString!));
    } else {
      if (errorCallBack != null) errorCallBack();
      return ResponseModel.err();
    }
  }
}

class AppException implements Exception {
  final dynamic message;
  final dynamic prefix;

  AppException([this.message, this.prefix]);

  @override
  String toString() {
    return "$prefix$message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([message])
      : super(message, "Error During Communication: ");
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, "Invalid Request: ");
}

class UnauthorizedException extends AppException {
  UnauthorizedException([message]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends AppException {
  InvalidInputException([message]) : super(message, "Invalid Input: ");
}

class InternalServerException extends AppException {
  InternalServerException([message]) : super(message, "Internal Server Error:");
}
