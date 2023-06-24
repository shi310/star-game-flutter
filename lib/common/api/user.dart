import '../common.dart';

class UserApi {
  /// 登陆接口
  static Future<ResponseModel?> signIn({
    Future<void> Function(ErrorModel)? errorCallBack,
  }) async {
    var response = await DioService.to.get(
      '/sign/signIn',
      errorCallBack: errorCallBack,
    );
    return response != null ? ResponseModel.fromJson(response.data) : null;
  }

  /// 注册接口
  static Future<ResponseModel?> signUp({
    Future<void> Function(ErrorModel)? errorCallBack,
  }) async {
    var response = await DioService.to.post(
      '/sign/signUp',
      errorCallBack: errorCallBack,
    );
    return response != null ? ResponseModel.fromJson(response.data) : null;
  }
}
