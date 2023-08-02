import '../common.dart';

class UserApi {
  /// 登陆接口
  static Future<ResponseModel?> signIn({
    required String account,
    required String password,
    Future<void> Function(ErrorModel)? errorCallBack,
  }) async {
    var queryParameters = {
      'account': account,
      'password': password,
    };
    var response = await DioService.to.get(
      '/user/signin',
      errorCallBack: errorCallBack,
      queryParameters: queryParameters,
    );
    return response != null ? ResponseModel.fromJson(response.data) : null;
  }

  /// 注册接口
  static Future<ResponseModel?> signUp({
    Future<void> Function(ErrorModel)? errorCallBack,
  }) async {
    var response = await DioService.to.post(
      '/user/signup',
      errorCallBack: errorCallBack,
    );
    return response != null ? ResponseModel.fromJson(response.data) : null;
  }
}
