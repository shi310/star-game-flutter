import 'package:dio/dio.dart';

import '../common.dart';

class DioService {
  // final Function errorCallBack;

  Dio dio = Dio();

  static final DioService _instance = DioService._internal();

  factory DioService() => DioService._instance;

  DioService._internal() {
    // BaseOptions、Options、RequestOptions 都可以配置参数，优先级别依次递增，且可以根据优先级别覆盖参数
    BaseOptions options = BaseOptions(
      // 请求基地址,可以包含子路径
      baseUrl: baseUrl,

      //连接服务器超时时间，单位是毫秒.
      connectTimeout: const Duration(minutes: 30),

      // 响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: const Duration(minutes: 30),

      // Http请求头.
      headers: {},

      /// 请求的Content-Type，默认值是"application/json; charset=utf-8".
      /// 如果您想以"application/x-www-form-urlencoded"格式编码请求数据,
      /// 可以设置此选项为 `Headers.formUrlEncodedContentType`,  这样[Dio]
      /// 就会自动编码请求体.
      contentType: 'application/json; charset=utf-8',

      /// [responseType] 表示期望以那种格式(方式)接受响应数据。
      /// 目前 [ResponseType] 接受三种类型 `JSON`, `STREAM`, `PLAIN`.
      /// 默认值是 `JSON`, 当响应头中content-type为"application/json"时，dio 会自动将响应内容转化为json对象。
      /// 如果想以二进制方式接受响应数据，如下载一个二进制文件，那么可以使用 `STREAM`.
      /// 如果想以文本(字符串)格式接收响应数据，请使用 `PLAIN`.
      responseType: ResponseType.json,
    );

    dio.options = options;

    // Cookie管理
    // CookieJar cookieJar = CookieJar();
    // dio.interceptors.add(CookieManager(cookieJar));

    // 添加拦截器
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Do something before request is sent
        return handler.next(options); //continue
        // 如果你想完成请求并返回一些自定义数据，你可以resolve一个Response对象 `handler.resolve(response)`。
        // 这样请求将会被终止，上层then会被调用，then中返回的数据将是你的自定义response.
        //
        // 如果你想终止请求并触发一个错误,你可以返回一个`DioException`对象,如`handler.reject(error)`，
        // 这样请求将被中止并触发异常，上层catchError会被调用。
      },
      onResponse: (response, handler) async {
        // Do something with response data
        // 如果token过期将直接退出登陆
        // ResponseEntity responseEntity = ResponseEntity.fromJson(response.data);
        // if (responseEntity.code == 1) {
        //   await MyTimer.futureMill(500);
        //   goLoginPage();
        // }

        return handler.next(response);

        // 如果你想终止请求并触发一个错误,你可以 reject 一个`DioException`对象,如`handler.reject(error)`，
        // 这样请求将被中止并触发异常，上层catchError会被调用。
      },
      onError: (DioException err, handler) {
        // Do something with response error

        // Get.dialog(AlertCenter(
        //   child: AlertCenter.alert(
        //     title: e.type.toString(),
        //     content: e.message,
        //   ),
        // ));

        // var eInfo = createErrorEntity(err);
        // onError(eInfo);

        // return;

        return handler.next(err);

        // errorCallBack(eInfo);

        //continue
        // 如果你想完成请求并返回一些自定义数据，可以resolve 一个`Response`,如`handler.resolve(response)`。
        // 这样请求将会被终止，上层then会被调用，then中返回的数据将是你的自定义response.
      },
    ));
  }

  // 错误信息
  ErrorEntity createErrorEntity(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        return ErrorEntity(code: -1, message: "请求取消");
      case DioExceptionType.connectionTimeout:
        return ErrorEntity(code: -2, message: "连接超时");
      case DioExceptionType.sendTimeout:
        return ErrorEntity(code: -3, message: "请求超时");
      case DioExceptionType.receiveTimeout:
        return ErrorEntity(code: -4, message: "响应超时");
      case DioExceptionType.badResponse:
        int errCode = -5;
        String errMsg = '未知的请求错误';
        if (error.response != null) {
          errCode = error.response!.statusCode!;
          errMsg = error.response!.statusMessage!;
        }
        return ErrorEntity(code: errCode, message: errMsg);

      default:
        return ErrorEntity(code: -6, message: '网络连接失败');
    }
  }

  /// 读取本地配置
  Map<String, dynamic>? getAuthorizationHeader() {
    var headers = <String, dynamic>{};
    return headers;
  }

  /// restful get 操作
  /// refresh 是否下拉刷新 默认 false
  /// noCache 是否不缓存 默认 true
  /// list 是否列表 默认 false
  /// cacheKey 缓存key
  /// cacheDisk 是否磁盘缓存
  Future<Response?> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    bool refresh = true,
    bool noCache = !cacheEnable,
    bool list = false,
    String cacheKey = '',
    bool cacheDisk = false,
    void Function(int, int)? onReceiveProgress,
    Future<void> Function(ErrorEntity eInfo)? errorCallBack,
    CancelToken? cancelToken,
  }) async {
    var requestOptions = options ?? Options();
    requestOptions.extra ??= {};
    requestOptions.extra!.addAll({
      "refresh": refresh,
      "noCache": noCache,
      "list": list,
      "cacheKey": cacheKey,
      "cacheDisk": cacheDisk,
    });
    requestOptions.headers = requestOptions.headers ?? {};

    Map<String, dynamic>? authorization = getAuthorizationHeader();
    if (authorization != null) {
      requestOptions.headers!.addAll(authorization);
    }

    Response response;

    try {
      response = await dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException catch (err) {
      var eInfo = createErrorEntity(err);
      if (errorCallBack != null) await errorCallBack(eInfo);
      return null;
    }
  }

  /// restful post 操作
  Future<Response?> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    Future<void> Function(ErrorEntity eInfo)? errorCallBack,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};
    Map<String, dynamic>? authorization = getAuthorizationHeader();
    if (authorization != null) {
      requestOptions.headers!.addAll(authorization);
    }

    Response response;

    try {
      response = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
      );
      return response;
    } on DioException catch (err) {
      var eInfo = createErrorEntity(err);
      if (errorCallBack != null) await errorCallBack(eInfo);
      return null;
    }
  }

  /// restful put 操作
  Future put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    Future<void> Function(ErrorEntity eInfo)? errorCallBack,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};
    Map<String, dynamic>? authorization = getAuthorizationHeader();
    if (authorization != null) {
      requestOptions.headers!.addAll(authorization);
    }

    Response response;

    try {
      response = await dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
      );
      return response;
    } on DioException catch (err) {
      var eInfo = createErrorEntity(err);
      if (errorCallBack != null) await errorCallBack(eInfo);
      return null;
    }
  }

  /// restful patch 操作
  Future patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    Future<void> Function(ErrorEntity eInfo)? errorCallBack,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};
    Map<String, dynamic>? authorization = getAuthorizationHeader();
    if (authorization != null) {
      requestOptions.headers!.addAll(authorization);
    }

    Response response;

    try {
      response = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
      );
      return response;
    } on DioException catch (err) {
      var eInfo = createErrorEntity(err);
      if (errorCallBack != null) await errorCallBack(eInfo);
      return null;
    }
  }

  /// restful delete 操作
  Future delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    Future<void> Function(ErrorEntity eInfo)? errorCallBack,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};
    Map<String, dynamic>? authorization = getAuthorizationHeader();
    if (authorization != null) {
      requestOptions.headers!.addAll(authorization);
    }

    Response response;

    try {
      response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
      );
      return response;
    } on DioException catch (err) {
      var eInfo = createErrorEntity(err);
      if (errorCallBack != null) await errorCallBack(eInfo);
      return null;
    }
  }

  /// restful post form 表单提交操作
  Future postForm(
    String path, {
    Map<String, dynamic> data = const {},
    Map<String, dynamic>? queryParameters,
    Options? options,
    void Function(int, int)? onSendProgress,
    CancelToken? cancelToken,
    Future<void> Function(ErrorEntity eInfo)? errorCallBack,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};
    Map<String, dynamic>? authorization = getAuthorizationHeader();
    if (authorization != null) {
      requestOptions.headers!.addAll(authorization);
    }

    Response response;

    try {
      response = await dio.post(
        path,
        data: FormData.fromMap(data),
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
      );
      return response;
    } on DioException catch (err) {
      var eInfo = createErrorEntity(err);
      if (errorCallBack != null) await errorCallBack(eInfo);
      return null;
    }
  }

  /// restful post Stream 流数据
  Future postStream(
    String path, {
    dynamic data,
    int dataLength = 0,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    Future<void> Function(ErrorEntity eInfo)? errorCallBack,
  }) async {
    Options requestOptions = options ?? Options();
    requestOptions.headers = requestOptions.headers ?? {};
    Map<String, dynamic>? authorization = getAuthorizationHeader();
    if (authorization != null) {
      requestOptions.headers!.addAll(authorization);
    }
    requestOptions.headers!.addAll({
      Headers.contentLengthHeader: dataLength.toString(),
    });

    Response response;

    try {
      response = await dio.post(
        path,
        data: Stream.fromIterable(data.map((e) => [e])),
        queryParameters: queryParameters,
        options: requestOptions,
        cancelToken: cancelToken,
      );
      return response;
    } on DioException catch (err) {
      var eInfo = createErrorEntity(err);
      if (errorCallBack != null) await errorCallBack(eInfo);
      return null;
    }
  }
}

// 异常处理
class ErrorEntity implements Exception {
  int code = -1;
  String message = '';
  ErrorEntity({required this.code, required this.message});

  @override
  String toString() {
    if (message == '') return "Exception";
    return "Exception: code $code, $message";
  }
}
