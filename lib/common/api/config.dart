import '../common.dart';

class ConfigApi {
  static Future<ResponseModel?> getconfig({
    Future<void> Function(ErrorModel)? errorCallBack,
    void Function(int, int)? onReceiveProgress,
  }) async {
    var response = await DioService.to.get(
      '/config/getconfig',
      errorCallBack: errorCallBack,
      onReceiveProgress: onReceiveProgress,
    );
    return response != null ? ResponseModel.fromJson(response.data) : null;
  }
}
